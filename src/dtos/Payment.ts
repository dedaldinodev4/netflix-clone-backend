import { Decimal } from "@prisma/client/runtime/library";
import { IBase } from "./Base";


export interface IPayment extends IBase, IPaymentRequest {
  status: boolean;
}

export interface IPaymentRequest {
  value: Decimal;
  payment_method: string;
  id_user: string;
  id_subscription: string;
}

export interface IUpdatePaymentRequest {
  value: Decimal;
  payment_method: string;
}