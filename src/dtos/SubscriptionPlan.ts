import { Decimal } from "@prisma/client/runtime/library";
import { IBase } from "./Base";


export interface ISubscriptionPlan extends IBase, ISubscriptionPlanRequest {}

export interface ISubscriptionPlanRequest {
  price: Decimal;
  quantity_device: number;
  description: string | null;
  id_typeSubscriptionPlan: string;
}

export interface IUpdateSubscriptionPlanRequest {
  price: Decimal;
  quantity_device: number;
  description: string | null;
}