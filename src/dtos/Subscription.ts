import { IBase } from "./Base";


export interface ISubscription extends IBase, ISubscriptionRequest {}

export interface ISubscriptionRequest {
  date_start: Date | null;
  date_final: Date;
  id_subscriptionPlan: string;
  id_user: string;
}

export interface IUpdateSubscriptionRequest {
  date_start: Date | null;
  date_final: Date;
}