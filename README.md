# TaskRadar — IMWUT research outline

英文 outline，偏重真实感知需求、动机测量、系统设计及部署开销。IMWUT 是期刊，论文通常在 UbiComp 展示；当前并未指定已经确认的投稿轮次。

## 编译与编辑

- 主文件：`main.tex`；编译器：pdfLaTeX；文献工具：BibTeX。
- 本地：`latexmk -pdf main.tex`。
- Windows / MiKTeX 缺少 Perl 时：`powershell -ExecutionPolicy Bypass -File build.ps1`，直接调用 pdfLaTeX 与 BibTeX；缺包会停止，不打开安装窗口。
- 标题、作者元数据：`metadata.tex`，默认匿名占位。
- 正文：`sections/00_abstract.tex` 至 `sections/13_conclusion.tex`。
- 可选附录：`sections/A_reproducibility.tex`，默认不加入主稿。
- 文献：`references.bib`，独立于 ICCV 文件夹。
- 蓝色 outline 注释由 `preamble.tex` 中的 `\outlinenotestrue` 控制。

## 当前章节

1. Introduction
2. Background and Application Scope
3. Motivating Measurement Study
4. Problem Definition and System Requirements
5. System Challenges
6. System Design
7. Implementation Plan
8. Evaluation Methodology
9. Evaluation Questions and Planned Results
10. Cross-Application Case Studies
11. Related Work
12. Discussion and Limitations
13. Conclusion

indoor sensing 为主要实验，automotive detection 为扩展。参与者数、环境数、部署时长、设备性能和准确率均未虚构；最终需要数据审计和实验决定。

## ACM 模板

使用官方 ACM `acmart` 模板，当前单栏匿名审稿配置为：

```tex
\documentclass[acmlarge,review,anonymous,nonacm]{acmart}
\acmJournal{IMWUT}
```

ACM 模板说明将 IMWUT 列为 `acmlarge` 期刊。最终投稿前必须复核当轮 IMWUT 作者指南与审稿选项：若要求 `manuscript`，按官方要求切换，不能以当前配置代替最终检查。

官方类文件与 BibTeX 样式放在根目录，原始 `acmart.dtx`、`acmart.ins` 和 README 放在 `template-source/`，保留源文件与 LPPL 许可说明；没有修改第三方类文件。版本与下载哈希见 `TEMPLATE_PROVENANCE.json`。

`nonacm` 仅用于当前写作草稿，隐藏未分配的出版信息；ACM reference block 也暂时隐藏，没有编造 DOI、卷期、文章号或作者机构。正式投稿前移除 `nonacm` 并按当轮指南设置审稿元数据；录用版本按出版社提供的信息恢复。

## GitHub / Overleaf

源码仓库：https://github.com/DNKgong/TaskRadar-IMWUT 。本地使用 SSH origin，主分支为 `main`。

将本目录内的内容上传到独立 GitHub 仓库根目录，然后在 Overleaf 从 GitHub 创建项目；选择 `main.tex` 和 pdfLaTeX。没有外部共享文件、子模块或本地绝对路径依赖。

详见 `notes/OPEN_DECISIONS.md` 和 `notes/REFERENCE_AUDIT.md`。只选择 ICCV / IMWUT 中一个实际投稿，完整结果和事实记录保持一致。
