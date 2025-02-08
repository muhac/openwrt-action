[English](https://github.com/muhac/openwrt-action) ←

# 借助 GitHub Actions 的 OpenWrt 在线集成编译

支持自动定制固件, 自动调整依赖及生成配置文件, 无需上传配置.
兼容 [OpenWrt 官方源](https://github.com/openwrt/openwrt),
[ImmortalWrt](https://github.com/immortalwrt/immortalwrt),
和 [Lean 源](https://github.com/coolsnowwolf/lede) 等.

感谢 [P3TERX](https://github.com/P3TERX/Actions-OpenWrt)
及 [KFERMercer](https://github.com/KFERMercer/OpenWrt-CI) 珠玉在前.

## 使用教程:

#### 1. 注册 GitHub 账号并开启 GitHub Actions.

#### 2. `Fork` 此代码库.

#### 3. 定制固件:

##### 更改 OpenWrt 源

在 `build-openwrt.yml` 文件中, 将
[此处](.github/workflows/build.yml#L60-L61)
代码库和分支更改为你自己的源.

我已经测试过从 [ImmortalWrt](https://github.com/muhac/openwrt-action/tree/immortal)
和 [Lean](https://github.com/muhac/openwrt-action/tree/leanlede) 源编译.
你可以点击链接在代码库中找到对应的分支直接使用.

如果你想从其他源编译, 你可能需要修改部分脚本配置.

##### 配置固件

相关文章:
- [面向小白的 Github Action 使用 workflow 自动编译 Lean OpenWrt 教程](https://zhuanlan.zhihu.com/p/94402324)
- [关于 Github Action 自动编译 Lean OpenWrt 的配置修改问题](https://zhuanlan.zhihu.com/p/94527343)
- [OpenWrt 编译 LuCI 插件应用说明](https://www.right.com.cn/forum/thread-344825-1-1.html)

#### 4. 大功告成.

> ### 如何下载到编译完成的固件?

集成编译环境会自动开始编译. 在代码库首页, 点击页面上方的 `Actions` 按钮就可以查看进度.

如果相应的集成活动顺利完成 (显示为绿色), 点击页面右上方的 `Artifacts` 即可看到你的固件 (通常是一个压缩包). 点击即可开始下载.
