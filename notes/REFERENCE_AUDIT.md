# 核心引用审计说明

此 bibliography 只为 outline 提供核心引用，不是完整综述。保留可核查的标题、作者和出处；未核实的页码或 DOI 不补写。

- RaLD：AAAI 2026，DOI `10.1609/aaai.v40i22.38946`。
- RadarLLM：AAAI 2026，DOI `10.1609/aaai.v40i7.37500`；正文有雷达到文本和文本到雷达 token 训练，主要评测为理解。
- LiDARCrafter：AAAI 2026，DOI `10.1609/aaai.v40i22.38905`。作者名以出版页面 Alan Liang / Yu Yang 为当前记录，项目页面存在命名差异，投稿前以出版社导出再核对。
- DiffRefine：ICCV 2025，作者项目 https://yunshin.github.io/DiffRefine/ 。已有任务驱动增密，不宣称此前没人做过。
- mmWaveFlow / RaUF：CVPR 2026；缺少未核实页码的条目保持缺省。
- mmPC：IMWUT 2025，DOI `10.1145/3729465`；不写成单帧方法。
- OmniPC：SenSys 2026，DOI `10.1145/3774906.3802797`；物理处理基线，不写成神经生成器。
- MetaQueries：按公开 arXiv 保守引用；不把本轮未完成核实的会议身份写入 BibTeX。
- Goal-oriented VED：按 `arXiv:2304.08324` 引用，说明概念基础而非本工作的发明。
- RT-Pose / M4Human：仅作为候选数据资源引用；不代表已经下载、字段完整或确定采用。

PRISM/MIST、4D-RaDiff、LiFi 等本轮不放入核心正式论文表，避免混淆投稿、workshop、预印本和主会身份。正式 related work 扩展时重新核对。

只在对应论点附近引用；不要使用他人的方法范围之外未评测的问题，编造为作者承认的 limitations。
