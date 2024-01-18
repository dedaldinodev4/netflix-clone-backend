import { IBase } from "./Base";


export interface IMemberContent extends IBase, IMemberContentRequest {}

export interface IMemberContentRequest {
  id_member: string;
  id_content: string;
}