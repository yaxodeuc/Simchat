# Sim

<p align="center">
<img align="center" width="150px" src="https://raw.githubusercontent.com/cherish-chat/xx-doc/master/docs/images/logo.1x.webp">
</p>

Sim-server是一个功能超多的开箱即用的IM服务器。它的诞生是为了让每个人都能使用自己的IM APP，不需要再使用令人不爽的第三方IM
APP。Sim-server是一个开源项目，欢迎大家一起来完善它。

<div align=center>

[![Go](https://github.com/cherish-chat/Sim-server/workflows/Go/badge.svg?branch=master)](https://github.com/cherish-chat/Sim-server/actions)
[![Go Report Card](https://goreportcard.com/badge/github.com/cherish-chat/Sim-server)](https://goreportcard.com/report/github.com/cherish-chat/Sim-server)
[![Release](https://img.shields.io/github/v/release/cherish-chat/Sim-server.svg?style=flat-square)](https://github.com/cherish-chat/Sim-server)
[![Go Reference](https://pkg.go.dev/badge/github.com/cherish-chat/Sim-server.svg)](https://pkg.go.dev/github.com/cherish-chat/Sim-server)
[![Awesome Go](https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg)](https://github.com/avelino/awesome-go)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Sim](https://api.cherish.chat/api/server/onlineshield/202303051934)](https://Sim.cherish.chat)

</div>

# ⚠️⚠️⚠️⚠️⚠️⚠️


## 🤷‍ Sim 介绍

简体中文 | [English](README-EN.md)

Sim-server代码不复杂，im大多逻辑都在于客户端，所以Sim-server只是一个简单的im服务器，但它具备了一个IM应有的全部功能。


正在开发中，欢迎各原生平台开发者加入。通用sdk选择使用`rust`开发，因为`rust`的性能和安全性都是目前最好的。

#### 包括但不限于：

* [x] 发送消息（可定时的、可群发），包括：文本、图片、语音、视频、文件、位置、名片、撤回、转发、@、表情、对方正在输入、自定义消息等
* [x] 按需拉取离线消息，且没有消息数量/天数限制
* [x] 群聊20万成员上限
* [x] 端对端加密(ECOD密钥协商算法)
* [x] p2p连接，无公网ip也能搭建属于自己的im服务器。(也可以使用传统网络方式)

## Sim的介绍

* 服务端使用 `Go` 语言开发
    * 高性能
    * 简单语法，易于维护代码
    * 部署简单
    * 服务器资源占用少
* 客户端sdk使用 `rust` 开发
    * 高性能
    * 安全性高
    * 原生async/await，很适合客户端开发
    * 动静态库体积小

## Sim的设计原则

通过im服务器，我们希望解决以下问题：

* 聊天受监控
* 消息漫游天数有限制
* 群聊人数有限制
* 消息占用磁盘空间过大

## Sim-server 架构

## 点点star! ⭐

如果你喜欢或正在使用这个项目来学习或开始你的解决方案，请给它一个星。谢谢！
