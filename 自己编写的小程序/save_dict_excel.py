#保存一个dict格式的数据到excel，不保留keys
dic = {22150: 1.3303771712158805, 22151: 1.3132655086848632, 22152: 1.297114143920596, 22153: 1.2815880893300242, 22154: 1.2668635235732022, 22155: 1.252141439205954, 22156: 1.2375186104218356, 22157: 1.2237741935483872, 22158: 1.2107295285359805, 22159: 1.2032903225806455, 22160: 1.1908114143920592, 22161: 1.178339950372209, 22162: 1.165558312655087, 22163: 1.152682382133996, 22164: 1.1408982630272952, 22165: 1.1341563275434243, 22166: 1.1300521091811415, 22167: 1.1372133995037235, 22168: 1.1578337468982636, 22169: 1.1982233250620347, 22170: 1.2667915632754359, 22171: 1.35670223325062, 22172: 1.4730694789081884, 22173: 1.6117692307692317, 22174: 1.7654317617866007, 22175: 1.9285806451612915, 22176: 2.0894689826302715, 22177: 2.24328287841191, 22178: 2.38568982630273, 22179: 2.5114243176178657, 22180: 2.6190421836228275, 22181: 2.709454094292802, 22182: 2.7826277915632747, 22183: 2.839707196029774, 22184: 2.882193548387097, 22185: 2.911310173697271, 22186: 2.928893300248137, 22187: 2.9400000000000297, 22188: 2.9358114143920573, 22189: 2.9237568238213387, 22190: 2.904851116625312, 22191: 2.8800794044665006, 22192: 2.8506947890818886, 22193: 2.816801488833748, 22194: 2.777833746898266, 22195: 2.7344789081885854, 22196: 2.685791563275433, 22197: 2.6317146401985143, 22198: 2.5711761786600498, 22199: 2.5054044665012407, 22200: 2.433962779156327, 22201: 2.3598312655086846, 22202: 2.2823424317617866, 22203: 2.2048362282878413, 22204: 2.1293225806451606, 22205: 2.056982630272954, 22206: 1.9889131513647644, 22207: 1.9274714640198487, 22208: 1.8731364764267975, 22209: 1.825416873449132, 22210: 1.7859478908188582, 22211: 1.754176178660049, 22212: 1.7286699751861037, 22213: 1.7081042183622817, 22214: 1.6914565756823827, 22215: 1.6776178660049614, 22216: 1.6663449131513643, 22217: 1.6564838709677414, 22218: 1.6469454094292806, 22219: 1.6368436724565754, 22220: 1.6260769230769236, 22221: 1.6143300248138965, 22222: 1.6008362282878401, 22223: 1.5862456575682387, 22224: 1.5705111662531013, 22225: 1.5538982630272953, 22226: 1.5369478908188587, 22227: 1.5192034739454092, 22228: 1.5007940446650128, 22229: 1.4820148883374682, 22230: 1.462672456575682, 22231: 1.442803970223324, 22232: 1.4231588089330032, 22233: 1.4037071960297762, 22234: 1.3843622828784135, 22235: 1.3653622828784102, 22236: 1.3516004962779156, 22237: 1.333791563275434}
data = []
for i in dic:
    #先将dict转成list
    data.append(dic[i])
save_data = pd.DataFrame(data)
save_data.columns = ["ppg_data"] #添加表头
save_data = save_data["ppg_data"] #去掉index横坐标轴
writer = pd.ExcelWriter(r"C:\Users\liyang\dict_excel.xlsx")
save_data.to_excel(writer, columns=['ppg_data'], index=False)
writer.save()
