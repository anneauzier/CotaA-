//
//  ContentView.swift
//  CotaAi
//
//  Created by Anne Auzier on 29/01/26.
//

import SwiftUI

enum EventStatus: String {
    case active, completed
    var description: String {
        switch self {
        case .active:
            return "Ativo"
        case .completed:
            return "Concluído"
        }
    }
}

struct CardEvent: View {
    var status: EventStatus

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                VStack(alignment: .leading) {
                    Text("Weekend Trip!")
                    Text("Beach house")
                        .foregroundStyle(.secondary)
                }
                Spacer()
                EventStatusTag(status: status)
            }
            
            HStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("4 people")
                
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Dec 20")
                
            }
            
            Divider()
            
            HStack {
                Text("Total")
                Spacer()
                Text("$320")
            }
            
            HStack {
                Text("You owe")
                Spacer()
                Text("$80")
            }
        }
        .padding()
    }
}

#Preview {
    CardEvent(status: .active)
}

struct EventStatusTag: View {
    var status: EventStatus

    var body: some View {
        switch status {
        case .active:
            Text("\(status.description)")
                .padding()
                .background {
                    Capsule(style: .continuous)
                        .fill(.green).opacity(0.3)
                }
        case .completed:
            Text("\(status.description)")
                .padding()
                .background {
                    Capsule(style: .continuous)
                        .fill(.gray).opacity(0.3)
                }
        }
        
    }
}
