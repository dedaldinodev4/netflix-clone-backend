import { IBase } from "./Base";


export interface IAudio extends IBase, IAudioRequest {}

export interface IAudioRequest {
  language: string;
  format: string;
  id_content: string;
}

export interface IUpdateAudioRequest {
  language: string;
  format: string;
}