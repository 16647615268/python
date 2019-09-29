from aip import AipOcr

# 新建一个AipOcr对象
config = {
    'appId': '17339549',
    'apiKey': 'ZzcnwSqEfa13aZr5uVwKGEQd',
    'secretKey': 'Uf5F0lifp56QFvWIYK2TXsGI7yvsKuXR'
}
client = AipOcr(**config)

# 读取图片
def get_file_content(file_path):
    with open(file_path, 'rb') as fp:
        return fp.read()

# 识别图片里的文字
def img_to_str(image_path):
    image = get_file_content(image_path)
    # 调用通用文字识别, 图片参数为本地图片
    result = client.basicGeneral(image)
    # 结果拼接返回
    if 'words_result' in result:
        return '\n'.join([w['words'] for w in result['words_result']])

if __name__ == '__main__':
    print(img_to_str('1.jpg'))