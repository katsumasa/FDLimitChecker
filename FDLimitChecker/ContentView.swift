//
//  ContentView.swift
//  FDLimitChecker2
//
//  Created by Katsumasa Kimura on 2025/03/12.
//

import SwiftUI

struct ContentView: View {
    @State private var fdLimitS: Int = 0
    @State private var fdLimitH: Int = 0

    var body: some View {
        VStack {
            Text("ファイルディスクリプタの上限")
                .font(.title)
                .padding()

            Text("Soft Limit:\(fdLimitS)")
                .font(.largeTitle)
                .bold()
                .padding()

            Text("Hard Limit:\(fdLimitH)")
                .font(.largeTitle)
                .bold()
                .padding()

            Button("取得する") {
                var rlimit = rlimit()
                if getrlimit(RLIMIT_NOFILE, &rlimit) == 0 {
                    fdLimitS = Int(rlimit.rlim_cur)
                    fdLimitH = Int(rlimit.rlim_max)
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

