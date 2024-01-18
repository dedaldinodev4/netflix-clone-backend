import { IBase } from "./Base";


export interface ITypeSubscriptionPlan extends IBase, ITypeSubscriptionPlanRequest {}

export interface ITypeSubscriptionPlanRequest {
  name: string;
}