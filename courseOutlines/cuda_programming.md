# Course Outline of CUDA Programming

## 課程目標

了解 GPU 硬體架構，並學習 CUDA 程式設計及其平行演算法設計

## 預先要求

* 修畢：程式設計(以 C 語言為佳)、資料結構
* 修畢或正在修讀至少任一：計算機結構、作業系統、演算法

## 相關書目

本課程使用教師自編教材，不指定教科書

## 課程進度

* GPU 架構與 CUDA 程式設計簡介(3~4w)
  * 基本硬體架構：Processors and Memories
  * 基本程式執行：Block、Thread、Warp
  * 範例討論：向量相加、向量累加
* 最佳化技巧(7~8w)
  * 記憶體存取：Bank Conflict、Pinned Memory、Unified Virtual Addressing
  * 流程控制：Synchronization、Atomics Operation
  * 效能評估：CUDA Event、Occupancy
  * 資料傳輸：Concurrency、Streaming
  * 範例討論：矩陣轉置、矩陣相乘
* 其他主題(3w)
  * CUDA in Python
  * OpenCL
  * (Optional)多 GPU 程式設計

## 教學方式與評量規劃

* 教學方式
  * 原則為每週約一至兩小時教師講授 + 約二至一小時隨堂練習
  * 部分週次得為翻轉教學，課堂時段進行同學作業展示或加強練習
* 評量規劃：三至四次作業、一次期末專案
