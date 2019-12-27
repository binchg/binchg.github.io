<?php
sleep(3);
$picdata = $_POST['picdata'];
if (empty($picdata)) {
    echo json_encode(['state' => 400, 'message' => '上传数据为空']);exit;
}
$picurl  = base64_image_content($picdata, 'upload/images');
if ($picurl) {
    echo json_encode(['state' => 200, 'picurl' => $picurl]);exit;
} else {
    echo json_encode(['state' => 500, 'message' => '上传失败']);exit;
}

function base64_image_content($base64_image_content, $path){
    //匹配出图片的格式
    if (preg_match('/^(data:\s*image\/(\w+);base64,)/', $base64_image_content, $result)){
        $type = $result[2];
        $new_file = $path."/".date('Ymd',time())."/";
        if(!file_exists($new_file)){
            //检查是否有该文件夹，如果没有就创建，并给予最高权限
            mkdir($new_file, 0700);
        }
        $new_file = $new_file.md5(microtime(true)).".{$type}";
        if (file_put_contents($new_file, base64_decode(str_replace($result[1], '', $base64_image_content)))){
            return './'.$new_file;
        }else{
            return false;
        }
    }else{
        return false;
    }
}
