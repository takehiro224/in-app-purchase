//
//  PurchaseManagerDelegate.swift
//  in-app-purchase
//
//  Created by Watanabe Takehiro on 2019/06/14.
//  Copyright © 2019 Watanabe Takehiro. All rights reserved.
//

import Foundation
import StoreKit

protocol PurchaseManagerDelegate: AnyObject {
    ///課金完了
    func purchaseManager(_ purchaseManager: PurchaseManager, didFinishTransaction transaction: SKPaymentTransaction, decisionHandler: (_ complete: Bool) -> Void)
    ///課金完了(中断していたもの)
    func purchaseManager(_ purchaseManager: PurchaseManager, didFinishUntreatedTransaction transaction: SKPaymentTransaction, decisionHandler: (_ complete: Bool) -> Void)
    ///リストア完了
    func purchaseManagerDidFinishRestore(_ purchaseManager: PurchaseManager)
    ///課金失敗
    func purchaseManager(_ purchaseManager: PurchaseManager, didFailTransactionWithError error: Error?)
    ///承認待ち(ファミリー共有)
    func purchaseManagerDidDeferred(_ purchaseManager: PurchaseManager)
}

extension PurchaseManagerDelegate {
    ///課金完了
    func purchaseManager(_ purchaseManager: PurchaseManager, didFinishTransaction transaction: SKPaymentTransaction, decisionHandler: (_ complete: Bool) -> Void) {
        decisionHandler(false)
    }
    ///課金完了(中断していたもの)
    func purchaseManager(_ purchaseManager: PurchaseManager, didFinishUntreatedTransaction transaction: SKPaymentTransaction, decisionHandler: (_ complete: Bool) -> Void) {
        decisionHandler(false)
    }
    ///リストア完了
    func purchaseManagerDidFinishRestore(_ purchaseManager: PurchaseManager){}
    ///課金失敗
    func purchaseManager(_ purchaseManager: PurchaseManager, didFailTransactionWithError error: Error?){}
    ///承認待ち(ファミリー共有)
    func purchaseManagerDidDeferred(_ purchaseManager: PurchaseManager){}
}
