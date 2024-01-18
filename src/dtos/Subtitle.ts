import { IBase } from "./Base";


export interface ISubtitle extends IBase, ISubtitleRequest {}

export interface ISubtitleRequest {
  language: string;
  format: string;
  id_content: string;
}

export interface IUpdateSubtitleRequest {
  language: string;
  format: string;
}