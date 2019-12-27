<?php
$action      = $_GET['action'];
$config_file = './js/ueditor/config.json';
$config      = json_decode(preg_replace("/\/\*[\s\S]+?\*\//", "", file_get_contents($config_file)), true);
switch ($action) {
    /* 获取配置信息 */
    case 'config':
        $result = $config;
        break;

    /* 上传图片 */
    case 'uploadimage':
    /* 上传涂鸦 */
    case 'uploadscrawl':
        echo saveFile('images');exit;
        break;

    /* 上传视频 */
    case 'uploadvideo':
        echo saveFile('videos');exit;
        break;

    /* 上传附件 */
    case 'uploadfile':
        echo saveFile('files');exit;
        break;

    /* 列出图片 */
    case 'listimage':
        echo showFile('listimage', $config);exit;
        break;

    /* 列出附件 */
    case 'listfile':
        echo showFile('listfile', $config);exit;
        break;

    /* 抓取远程附件 */
    case 'catchimage':
        $result = catchFile();
        break;

    default:
        $result = ['state' => '请求地址出错'];
        break;
}

/* 输出结果 */
if (isset($_GET["callback"])) {
    if (preg_match("/^[\w_]+$/", $_GET["callback"])) {
        echo htmlspecialchars($_GET["callback"]) . '(' . $result . ')';
    } else {
        echo json_encode(['state' => 'callback参数不合法']);
    }
} else {
    echo json_encode($result);
}

function saveFile($type = '')
{
    // 假装上传成功(可根据type存到不同的目录)
    return json_encode([
        "state" => "SUCCESS",                                  // 上传状态，上传成功时必须返回"SUCCESS"
        "url"   => './upload/images/lyear_5de21f46cd8ba.jpg',  // 返回的地址
        "title" => 'lyear_5de21f46cd8ba',                      // 附件名
    ]);
  
}

function catchFile() 
{
    // 假装抓取成功了
    return json_encode([
        "state" => "SUCCESS",                                  // 上传状态，上传成功时必须返回"SUCCESS"
        "url"   => './upload/images/lyear_5de21f46cd8ba.jpg',  // 返回的地址
        "title" => 'lyear_5de21f46cd8ba',                      // 附件名
    ]);
}


function showFile($type = '', $config)
{
    /* 判断类型 */
    switch ($type) {
        /* 列出附件 */
        case 'listfile':
            $allowFiles = $config['fileManagerAllowFiles'];
            $listSize   = $config['fileManagerListSize'];
            $path       = realpath('./upload/files/');
            break;
        
        /* 列出图片 */
        case 'listimage':
        default:
            $allowFiles = $config['imageManagerAllowFiles'];
            $listSize   = $config['imageManagerListSize'];
            $path       = realpath('./upload/images/');
    }
    $allowFiles = substr(str_replace(".", "|", join("", $allowFiles)), 1);

    /* 获取参数 */
    $size = isset($_GET['size']) ? htmlspecialchars($_GET['size']) : $listSize;
    $start = isset($_GET['start']) ? htmlspecialchars($_GET['start']) : 0;
    $end = $start + $size;

    /* 获取附件列表 */
    $files = getfiles($path, $allowFiles);
    if (!count($files)) {
        return json_encode(array(
            "state" => "no match file",
            "list" => array(),
            "start" => $start,
            "total" => count($files)
        ));
    }

    /* 获取指定范围的列表 */
    $len = count($files);
    for ($i = min($end, $len) - 1, $list = array(); $i < $len && $i >= 0 && $i >= $start; $i--){
        $list[] = $files[$i];
    }

    /* 返回数据 */
    $result = array(
        "state" => "SUCCESS",
        "list"  => $list,
        "start" => $start,
        "total" => count($files)
    );

    return json_encode($result);
}

function getfiles($path = '', $allowFiles = '', &$files = array())
{
    if (!is_dir($path)) return null;
    if(substr($path, strlen($path) - 1) != '/') $path .= '/';
    $handle = opendir($path);
    while (false !== ($file = readdir($handle))) {
        if ($file != '.' && $file != '..') {
            $path2 = $path . $file;
            if (is_dir($path2)) {
                getfiles($path2, $allowFiles, $files);
            } else {
                if (preg_match("/\.(".$allowFiles.")$/i", $file)) {
                    $files[] = array(
                        'url'=> str_replace("\\", "/", substr($path2, strlen($_SERVER['DOCUMENT_ROOT']))),
                        'mtime'=> filemtime($path2)
                    );
                }
            }
        }
    }
    return $files;
}






