//
//  JournalEntryDetailView.swift
//  Day Journal
//
//  Created by Nick Walter on 9/6/23.
//

import SwiftUI

struct JournalEntryDetailView: View {
    
    let detailJournalEntry: JournalEntry
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HStack {
                    Text(detailJournalEntry.date, style: .date)
                        .bold()
                    Text("-")
                    Text(String(repeating: "⭐️", count: Int(detailJournalEntry.rating)))
                    Spacer()
                }
                .padding(.bottom)
                
                Text(detailJournalEntry.text)
            }
            .padding()
        }
        .navigationTitle(detailJournalEntry.title)
    }
}

#Preview {
    NavigationStack {
        JournalEntryDetailView(detailJournalEntry: JournalEntry(title: "Great Gold Day", text: "I found a nice pot of gold, I'm rich I tell ya!!! Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus finibus erat quis tortor fermentum, ac efficitur massa aliquet. Curabitur ut est eu lorem sodales fringilla a nec quam. Morbi non congue erat, in dictum mi. Morbi sit amet sapien at urna dapibus euismod. Fusce rhoncus hendrerit aliquam. Nam fermentum condimentum massa ut fermentum. Ut a mi finibus, rutrum est venenatis, ultrices lacus. Etiam efficitur hendrerit diam. Maecenas sed porttitor mauris. Nulla sit amet nisl felis. Etiam consectetur magna nec consequat aliquam. Morbi et vehicula ex. Quisque lobortis nisi sed tempus faucibus. In sit amet nibh dui. Proin tincidunt in leo ut rutrum. Sed a ultrices quam. Donec a purus sed lorem volutpat convallis eget non ex. Nullam libero sem, scelerisque eget ligula at, fermentum blandit lectus. Cras viverra sapien et mi maximus lacinia. Nam auctor mollis dolor vel malesuada.Quisque porta tortor at posuere dictum. Vestibulum ut purus metus. Nam eget leo diam. Ut nisi enim, facilisis in justo pharetra, egestas cursus ex. Aenean vitae felis eu sapien facilisis dignissim vel non elit. Etiam sed porttitor massa, vel varius urna. Maecenas molestie sagittis tortor, ac efficitur sapien.Suspendisse potenti. Nulla ut felis ex. Morbi volutpat vitae lorem eu consectetur. Sed dignissim mauris nec eros pulvinar, consectetur auctor velit iaculis. Vivamus leo sem, commodo nec pulvinar id, varius ac ligula. Donec vitae egestas purus, vitae mollis mauris. Duis purus ante, congue ut quam nec, laoreet congue erat. Cras gravida magna dolor, eu varius elit rutrum eget.Sed scelerisque quam in risus rhoncus, at porta leo volutpat. Suspendisse sed vestibulum lacus, a viverra nisl. Proin lobortis, ante in cursus bibendum, ante magna mollis elit, ultricies iaculis elit enim vitae purus. Aliquam a tellus lacinia, ornare neque eget, egestas est. Aenean sit amet ex molestie, lacinia nisl vitae, egestas nisi. Maecenas mi sem, semper ac lacus vestibulum, viverra lobortis ante. Nunc et dui egestas, euismod felis a, gravida elit.Fusce maximus sed dui quis hendrerit. Duis placerat congue diam, in vehicula tortor cursus id. Nulla efficitur at elit eu vestibulum. Ut at justo nec orci hendrerit malesuada. Phasellus lobortis erat ac convallis rhoncus. Suspendisse a rhoncus erat, ullamcorper tincidunt neque. Aenean sed rhoncus ipsum. Etiam ac ipsum enim. Praesent ac interdum nibh. Phasellus pretium magna id purus tempus, nec porttitor diam sagittis. Morbi at congue erat, eu condimentum ipsum. Maecenas tristique justo ex, sit amet gravida nunc ornare ac. Suspendisse eu aliquet turpis, id blandit nulla. Nulla elementum eros molestie odio sagittis, volutpat sollicitudin metus vehicula. Phasellus porta, arcu vel consectetur posuere, erat nisi posuere enim, id mattis diam orci in nibh. Sed sit amet ex lobortis, euismod sem at, imperdiet tellus.Curabitur aliquam fermentum nibh, eget pellentesque odio imperdiet ac. Proin malesuada ut nibh sit amet dignissim. Aliquam eget odio euismod, efficitur libero in, consectetur neque. Quisque ornare libero a semper accumsan. Praesent sed interdum libero. Vivamus placerat consectetur diam, at auctor mi finibus auctor. In non volutpat justo. Praesent at nunc tristique, vulputate risus sed, accumsan nisi. Nulla mollis justo eget felis ultricies, quis dapibus magna tempus. Vestibulum posuere sodales est, sed faucibus quam. Aliquam placerat dolor eu finibus pellentesque. Aliquam ut feugiat quam. Sed nec viverra orci. Vivamus iaculis malesuada lectus ut viverra. Maecenas eget urna aSed ac faucibus arcu. In hac habitasse platea dictumst. Integer dignissim non metus in commodo. Nullam sagittis pellentesque lorem, a commodo tellus euismod pharetra. Etiam mattis, tortor ut elementum porta, libero urna auctor tortor, a auctor sem sapien vel odio. Ut consequat tincidunt dui sit amet vestibulum. Donec sodales, lectus eget vestibulum hendrerit, magna nibh auctor orci, ut blandit diam diam a mauris. Mauris et dignissim tortor, non tristique dolor. Proin non dui non purus pellentesque malesuada vel vitae ipsum. Nam nec ultrices mi. Curabitur placerat porta ipsum, et varius neque pretium rhoncus. Fusce ex ligula, iaculis sit amet lectus et, faucibus vehicula libero.Sed dictum mi dignissim, congue justo rutrum, ullamcorper lectus. Ut gravida nec leo sed hendrerit. In blandit sodales magna quis cursus. Nam vel suscipit sapien. Duis nec risus neque. Ut sem lorem, fermentum eget sem quis, dictum pulvinar orci. Nullam et ipsum eros. In vulputate fringilla tempor. Aenean vel pulvinar lectus. Sed et enim mauris. Duis imperdiet a nisl ac maximus. Etiam cursus pharetra fermentum. Sed dictum neque vel metus consectetur consequat. Morbi sit amet odio sem. Integer eleifend velit vitae erat congue, id posuere justo interdum. Donec pulvinar in odio sed posuere. Ut a volutpat mauris.", rating: 5, date: Date()))
    }
}
