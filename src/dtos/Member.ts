import { IBase } from "./Base";


export interface IMember extends IBase, IMemberRequest {}

export interface IMemberRequest {
  name: string;
  character: string;
}