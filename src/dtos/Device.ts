import { IBase } from "./Base";


export interface IDevice extends IBase, IDeviceRequest {}

export interface IDeviceRequest {
  name: string;
  type: string;
  access_history: string;
  id_user: string;
}

export interface IUpdateDeviceRequest {
  name: string;
  type: string;
  access_history: string;
}