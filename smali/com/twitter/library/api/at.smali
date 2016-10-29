.class public Lcom/twitter/library/api/at;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x4

    .line 257
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/twitter/library/api/at;->a:Ljava/util/Map;

    .line 258
    sget-object v0, Lcom/twitter/library/api/at;->a:Ljava/util/Map;

    const-string/jumbo v1, "status"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/twitter/library/api/at;->a:Ljava/util/Map;

    const-string/jumbo v1, "user"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/twitter/library/api/at;->a:Ljava/util/Map;

    const-string/jumbo v1, "news"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/twitter/library/api/at;->a:Ljava/util/Map;

    const-string/jumbo v1, "suggestion"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/twitter/library/api/at;->a:Ljava/util/Map;

    const-string/jumbo v1, "user_gallery"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/twitter/library/api/at;->a:Ljava/util/Map;

    const-string/jumbo v1, "media_gallery"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/twitter/library/api/at;->a:Ljava/util/Map;

    const-string/jumbo v1, "tweet_gallery"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/twitter/library/api/at;->a:Ljava/util/Map;

    const-string/jumbo v1, "event_summary"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/twitter/library/api/at;->a:Ljava/util/Map;

    const-string/jumbo v1, "event_update"

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/twitter/library/api/at;->a:Ljava/util/Map;

    const-string/jumbo v1, "summary"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/twitter/library/api/at;->b:Ljava/util/Map;

    .line 270
    sget-object v0, Lcom/twitter/library/api/at;->b:Ljava/util/Map;

    const-string/jumbo v1, "favorite"

    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/twitter/library/api/at;->b:Ljava/util/Map;

    const-string/jumbo v1, "user"

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/twitter/library/api/at;->b:Ljava/util/Map;

    const-string/jumbo v1, "megaphone"

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/twitter/library/api/at;->b:Ljava/util/Map;

    const-string/jumbo v1, "bird"

    const/16 v2, 0x25

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    return-void
.end method

.method public static A(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/core/TwitterUser;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 2743
    .line 2748
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v3, v2

    move-object v1, v2

    move-object v5, v2

    move-object v6, v2

    .line 2749
    :goto_0
    if-eqz v0, :cond_4

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v7, :cond_4

    .line 2750
    sget-object v7, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v7, v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :pswitch_0
    move-object v0, v1

    move-object v1, v6

    .line 2779
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    move-object v8, v6

    move-object v6, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_0

    .line 2752
    :pswitch_1
    const-string/jumbo v0, "user"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2753
    const-class v0, Lcom/twitter/model/core/TwitterUser;

    invoke-static {p0, v0}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_1

    .line 2754
    :cond_1
    const-string/jumbo v0, "welcome_flow_reason"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2755
    const-class v0, Lcom/twitter/model/core/bb;

    invoke-static {p0, v0}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/bb;

    move-object v5, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_1

    .line 2757
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    move-object v0, v1

    move-object v1, v6

    .line 2759
    goto :goto_1

    .line 2762
    :pswitch_2
    const-string/jumbo v0, "connections"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2763
    const-class v0, Lcom/twitter/model/core/TwitterUser;

    invoke-static {p0, v0}, Lcom/twitter/model/json/common/g;->d(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    move-object v1, v6

    goto :goto_1

    .line 2765
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    move-object v0, v1

    move-object v1, v6

    .line 2767
    goto :goto_1

    .line 2770
    :pswitch_3
    const-string/jumbo v0, "token"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2771
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v3

    move-object v0, v1

    move-object v1, v6

    goto :goto_1

    .line 2782
    :cond_4
    if-eqz v6, :cond_5

    .line 2783
    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2784
    new-instance v0, Lcom/twitter/model/core/cq;

    invoke-direct {v0}, Lcom/twitter/model/core/cq;-><init>()V

    const/16 v7, 0x28

    .line 2785
    invoke-virtual {v0, v7}, Lcom/twitter/model/core/cq;->a(I)Lcom/twitter/model/core/cq;

    move-result-object v7

    .line 2786
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    iget-object v0, v0, Lcom/twitter/model/core/TwitterUser;->d:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/twitter/model/core/cq;->a(Ljava/lang/String;)Lcom/twitter/model/core/cq;

    move-result-object v0

    .line 2787
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/twitter/model/core/cq;->d(I)Lcom/twitter/model/core/cq;

    move-result-object v0

    .line 2788
    invoke-virtual {v0}, Lcom/twitter/model/core/cq;->q()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/core/TwitterSocialProof;

    .line 2789
    new-instance v0, Lcom/twitter/model/search/TwitterUserMetadata;

    invoke-direct/range {v0 .. v5}, Lcom/twitter/model/search/TwitterUserMetadata;-><init>(Lcom/twitter/model/core/TwitterSocialProof;Ljava/lang/String;Ljava/lang/String;ZLcom/twitter/model/core/bb;)V

    iput-object v0, v6, Lcom/twitter/model/core/TwitterUser;->S:Lcom/twitter/model/search/TwitterUserMetadata;

    .line 2796
    :cond_5
    :goto_2
    return-object v6

    .line 2790
    :cond_6
    if-eqz v3, :cond_7

    .line 2791
    new-instance v0, Lcom/twitter/model/search/TwitterUserMetadata;

    move-object v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/twitter/model/search/TwitterUserMetadata;-><init>(Lcom/twitter/model/core/TwitterSocialProof;Ljava/lang/String;Ljava/lang/String;ZLcom/twitter/model/core/bb;)V

    iput-object v0, v6, Lcom/twitter/model/core/TwitterUser;->S:Lcom/twitter/model/search/TwitterUserMetadata;

    goto :goto_2

    .line 2792
    :cond_7
    if-eqz v5, :cond_5

    .line 2793
    new-instance v0, Lcom/twitter/model/search/TwitterUserMetadata;

    move-object v1, v2

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/twitter/model/search/TwitterUserMetadata;-><init>(Lcom/twitter/model/core/TwitterSocialProof;Ljava/lang/String;Ljava/lang/String;ZLcom/twitter/model/core/bb;)V

    iput-object v0, v6, Lcom/twitter/model/core/TwitterUser;->S:Lcom/twitter/model/search/TwitterUserMetadata;

    goto :goto_2

    .line 2750
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static B(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2800
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2803
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 2804
    :goto_0
    if-eqz v0, :cond_1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v2, :cond_1

    .line 2805
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_0

    .line 2806
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    .line 2807
    invoke-static {p0}, Lcom/twitter/library/api/at;->A(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    .line 2808
    if-eqz v0, :cond_0

    .line 2809
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2812
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 2814
    :cond_1
    return-object v1
.end method

.method public static C(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/library/api/f;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2818
    const/4 v1, 0x1

    .line 2819
    const/4 v0, 0x0

    .line 2821
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    .line 2822
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v3, :cond_1

    .line 2823
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    .line 2824
    :goto_0
    if-eqz v2, :cond_1

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_1

    .line 2825
    sget-object v3, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 2848
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    goto :goto_0

    .line 2828
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 2832
    :pswitch_2
    const-string/jumbo v2, "msg"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2833
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2839
    :pswitch_3
    const-string/jumbo v2, "valid"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2840
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->m()Z

    move-result v1

    goto :goto_1

    .line 2851
    :cond_1
    new-instance v2, Lcom/twitter/library/api/f;

    invoke-direct {v2, v1, v0}, Lcom/twitter/library/api/f;-><init>(ZLjava/lang/String;)V

    return-object v2

    .line 2825
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static D(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2862
    const/4 v1, 0x0

    .line 2863
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 2864
    :goto_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_1

    .line 2865
    sget-object v2, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 2881
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto :goto_0

    .line 2867
    :pswitch_1
    const-string/jumbo v1, "suggestion"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2868
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2874
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 2883
    :cond_1
    return-object v0

    .line 2865
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static E(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2895
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2897
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 2898
    :goto_0
    if-eqz v0, :cond_1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v2, :cond_1

    .line 2899
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_0

    .line 2900
    invoke-static {p0}, Lcom/twitter/library/api/at;->D(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    .line 2901
    if-eqz v0, :cond_0

    .line 2902
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2905
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 2908
    :cond_1
    return-object v1
.end method

.method public static F(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/library/api/ActivitySummary;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2912
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 2919
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_b

    move-object v1, v6

    move-object v2, v6

    move-object v3, v6

    move-object v4, v6

    .line 2921
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    .line 2923
    sget-object v0, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v7

    aget v0, v0, v7

    packed-switch v0, :pswitch_data_0

    :cond_0
    :pswitch_0
    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    .line 2975
    :goto_1
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_a

    .line 2977
    :goto_2
    new-instance v4, Lcom/twitter/library/api/ActivitySummary;

    invoke-direct {v4, v3, v2, v1, v0}, Lcom/twitter/library/api/ActivitySummary;-><init>(Ljava/lang/String;Ljava/lang/String;[J[J)V

    return-object v4

    .line 2925
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v0

    .line 2926
    const-string/jumbo v7, "favoriters_count"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2927
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    move-object v4, v5

    move-object v10, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_1

    .line 2928
    :cond_1
    const-string/jumbo v7, "retweeters_count"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2929
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    move-object v3, v4

    move-object v4, v5

    move-object v10, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v10

    goto :goto_1

    .line 2934
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v0

    .line 2935
    const-string/jumbo v7, "favoriters"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2936
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v5

    .line 2937
    :goto_3
    if-eqz v2, :cond_3

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v5, :cond_3

    .line 2938
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->i:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v5, :cond_2

    .line 2939
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->j()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2941
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    goto :goto_3

    .line 2943
    :cond_3
    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->e(Ljava/util/Collection;)[J

    move-result-object v0

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    move-object v11, v3

    move-object v3, v4

    move-object v4, v2

    move-object v2, v11

    .line 2944
    goto :goto_1

    :cond_4
    const-string/jumbo v7, "retweeters"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2945
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v5

    .line 2946
    :goto_4
    if-eqz v1, :cond_6

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v5, :cond_6

    .line 2947
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->i:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v5, :cond_5

    .line 2948
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->j()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2950
    :cond_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto :goto_4

    .line 2952
    :cond_6
    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->e(Ljava/util/Collection;)[J

    move-result-object v0

    move-object v10, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v1

    move-object v1, v10

    .line 2953
    goto/16 :goto_1

    .line 2954
    :cond_7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    .line 2956
    goto/16 :goto_1

    .line 2959
    :pswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v0

    .line 2960
    const-string/jumbo v7, "ext"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2961
    const-class v0, Lcom/twitter/model/stratostore/k;

    invoke-static {p0, v0}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/stratostore/k;

    .line 2962
    if-eqz v0, :cond_9

    const-class v7, Lcom/twitter/model/stratostore/m;

    .line 2963
    invoke-virtual {v0, v7}, Lcom/twitter/model/stratostore/k;->a(Ljava/lang/Class;)Lcom/twitter/model/stratostore/i;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/stratostore/m;

    .line 2964
    :goto_5
    if-eqz v0, :cond_8

    .line 2965
    iget-wide v8, v0, Lcom/twitter/model/stratostore/m;->a:J

    .line 2968
    :cond_8
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    .line 2969
    goto/16 :goto_1

    :cond_9
    move-object v0, v6

    .line 2963
    goto :goto_5

    :cond_a
    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_0

    :cond_b
    move-object v0, v6

    move-object v1, v6

    move-object v2, v6

    move-object v3, v6

    goto/16 :goto_2

    .line 2923
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static G(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/api/search/TwitterTypeAhead;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2989
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v1

    .line 2990
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 2991
    :goto_0
    if-eqz v0, :cond_3

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v2, :cond_3

    .line 2992
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_0

    .line 2993
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v0

    .line 2994
    const-string/jumbo v2, "users"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2995
    invoke-static {p0}, Lcom/twitter/library/api/at;->an(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Iterable;)Lcom/twitter/util/collection/r;

    .line 3002
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 2996
    :cond_1
    const-string/jumbo v2, "topics"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2997
    invoke-static {p0}, Lcom/twitter/library/api/at;->ap(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Iterable;)Lcom/twitter/util/collection/r;

    goto :goto_1

    .line 2999
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 3004
    :cond_3
    invoke-virtual {v1}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static H(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/library/api/search/TwitterTypeAheadGroup;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3015
    .line 3018
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v3, v0

    move-object v2, v1

    move-object v0, v1

    .line 3019
    :goto_0
    if-eqz v3, :cond_3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v3, v4, :cond_3

    .line 3020
    sget-object v4, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    .line 3042
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto :goto_0

    .line 3022
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v3

    .line 3023
    const-string/jumbo v4, "users"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3024
    invoke-static {p0}, Lcom/twitter/library/api/at;->an(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    .line 3025
    :cond_0
    const-string/jumbo v4, "topics"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3026
    invoke-static {p0}, Lcom/twitter/library/api/at;->ap(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 3027
    :cond_1
    const-string/jumbo v4, "hashtags"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3028
    invoke-static {p0}, Lcom/twitter/library/api/at;->aq(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1

    .line 3030
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 3035
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 3044
    :cond_3
    new-instance v3, Lcom/twitter/library/api/search/TwitterTypeAheadGroup;

    invoke-direct {v3, v2, v1, v0}, Lcom/twitter/library/api/search/TwitterTypeAheadGroup;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v3

    .line 3020
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static I(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/library/api/aq;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Lcom/twitter/library/api/aq",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3338
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3339
    const/4 v1, 0x0

    .line 3340
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    .line 3341
    :goto_0
    if-eqz v1, :cond_5

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v4, :cond_5

    .line 3342
    sget-object v4, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_0

    .line 3371
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto :goto_0

    .line 3344
    :pswitch_1
    const-string/jumbo v1, "ids"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3345
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    move-object v5, v1

    .line 3346
    :goto_2
    if-eqz v5, :cond_2

    move v1, v2

    :goto_3
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v5, v4, :cond_3

    move v4, v2

    :goto_4
    and-int/2addr v1, v4

    if-eqz v1, :cond_0

    .line 3347
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->i:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v1, :cond_1

    .line 3348
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->j()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3350
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    move-object v5, v1

    goto :goto_2

    :cond_2
    move v1, v3

    .line 3346
    goto :goto_3

    :cond_3
    move v4, v3

    goto :goto_4

    .line 3353
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 3358
    :pswitch_2
    const-string/jumbo v1, "next_cursor_str"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3359
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3364
    :pswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 3373
    :cond_5
    new-instance v1, Lcom/twitter/library/api/aq;

    invoke-direct {v1, v0, v6}, Lcom/twitter/library/api/aq;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v1

    .line 3342
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static J(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/library/api/ak;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 3406
    .line 3413
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v6, v7

    move-object v5, v7

    move-object v4, v7

    move-object v3, v7

    move-object v2, v7

    move-object v1, v7

    .line 3414
    :goto_0
    if-eqz v0, :cond_7

    sget-object v8, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v8, :cond_7

    .line 3415
    sget-object v8, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v8, v0

    packed-switch v0, :pswitch_data_0

    .line 3470
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 3417
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v8

    .line 3418
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 3419
    :goto_2
    if-eqz v0, :cond_0

    sget-object v9, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v9, :cond_0

    .line 3420
    sget-object v9, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v9, v0

    packed-switch v0, :pswitch_data_1

    .line 3449
    :cond_1
    :goto_3
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2

    .line 3423
    :pswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_3

    .line 3427
    :pswitch_4
    const-string/jumbo v0, "fullname"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    .line 3428
    sget-object v0, Ldbm;->d:Ldbm;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldbm;->b(Ljava/lang/String;)Ldbr;

    move-result-object v0

    iget-object v1, v0, Ldbr;->a:Ljava/lang/String;

    goto :goto_3

    .line 3430
    :cond_2
    const-string/jumbo v0, "screen_name"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez v4, :cond_3

    .line 3431
    sget-object v0, Ldbm;->d:Ldbm;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ldbm;->b(Ljava/lang/String;)Ldbr;

    move-result-object v0

    iget-object v4, v0, Ldbr;->a:Ljava/lang/String;

    goto :goto_3

    .line 3433
    :cond_3
    const-string/jumbo v0, "password"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v5, :cond_4

    .line 3434
    sget-object v0, Ldbm;->d:Ldbm;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ldbm;->b(Ljava/lang/String;)Ldbr;

    move-result-object v0

    iget-object v5, v0, Ldbr;->a:Ljava/lang/String;

    goto :goto_3

    .line 3436
    :cond_4
    const-string/jumbo v0, "email"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez v2, :cond_5

    .line 3437
    sget-object v0, Ldbm;->d:Ldbm;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ldbm;->b(Ljava/lang/String;)Ldbr;

    move-result-object v0

    iget-object v2, v0, Ldbr;->a:Ljava/lang/String;

    goto :goto_3

    .line 3439
    :cond_5
    const-string/jumbo v0, "phone_number"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v3, :cond_1

    .line 3440
    sget-object v0, Ldbm;->d:Ldbm;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ldbm;->b(Ljava/lang/String;)Ldbr;

    move-result-object v0

    iget-object v3, v0, Ldbr;->a:Ljava/lang/String;

    goto :goto_3

    .line 3454
    :pswitch_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_1

    .line 3458
    :pswitch_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v0

    .line 3459
    const-string/jumbo v8, "captcha_token"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3460
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 3461
    :cond_6
    const-string/jumbo v8, "captcha_image_url"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3462
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 3472
    :cond_7
    new-instance v0, Lcom/twitter/library/api/ak;

    invoke-direct/range {v0 .. v7}, Lcom/twitter/library/api/ak;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 3415
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 3420
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static K(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/twitter/library/api/TwitterLocation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 3634
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3635
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 3636
    :goto_0
    if-eqz v0, :cond_6

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_6

    .line 3637
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_5

    .line 3643
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v5, v6

    move-object v4, v6

    move-wide v2, v8

    move-object v1, v6

    .line 3644
    :goto_1
    if-eqz v0, :cond_3

    sget-object v10, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v10, :cond_3

    .line 3645
    sget-object v10, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v10, v0

    packed-switch v0, :pswitch_data_0

    .line 3672
    :cond_0
    :goto_2
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 3647
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v0

    .line 3648
    const-string/jumbo v10, "name"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 3649
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 3650
    :cond_1
    const-string/jumbo v10, "country"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 3651
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 3652
    :cond_2
    const-string/jumbo v10, "countryCode"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3653
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 3658
    :pswitch_2
    const-string/jumbo v0, "woeid"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3659
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->j()J

    move-result-wide v2

    goto :goto_2

    .line 3665
    :pswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_2

    .line 3674
    :cond_3
    if-eqz v1, :cond_4

    cmp-long v0, v2, v8

    if-eqz v0, :cond_4

    .line 3675
    new-instance v0, Lcom/twitter/library/api/TwitterLocation;

    invoke-direct/range {v0 .. v5}, Lcom/twitter/library/api/TwitterLocation;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3680
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 3677
    :cond_5
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_4

    .line 3678
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_3

    .line 3683
    :cond_6
    return-object v7

    .line 3645
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static L(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/library/api/av;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3861
    new-instance v2, Lcom/twitter/library/commerce/model/ai;

    invoke-direct {v2}, Lcom/twitter/library/commerce/model/ai;-><init>()V

    .line 3863
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 3864
    :goto_0
    if-eqz v0, :cond_17

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_17

    .line 3865
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 3866
    :goto_1
    if-eqz v0, :cond_2

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_2

    .line 3867
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v0

    .line 3868
    const-string/jumbo v1, "price"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3869
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    .line 3870
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v0

    .line 3871
    const-string/jumbo v1, "amount"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3872
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    .line 3873
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->l()Ljava/math/BigDecimal;

    move-result-object v0

    .line 3874
    invoke-virtual {v2, v0}, Lcom/twitter/library/commerce/model/ai;->a(Ljava/math/BigDecimal;)V

    .line 3877
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 3879
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->h:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_8

    .line 3880
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v0

    .line 3881
    const-string/jumbo v1, "media_search_string"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3882
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/twitter/library/commerce/model/ai;->f(Ljava/lang/String;)V

    .line 3954
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 3883
    :cond_3
    const-string/jumbo v1, "description"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3884
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/twitter/library/commerce/model/ai;->c(Ljava/lang/String;)V

    goto :goto_2

    .line 3885
    :cond_4
    const-string/jumbo v1, "search_string"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3886
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/twitter/library/commerce/model/ai;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 3887
    :cond_5
    const-string/jumbo v1, "destination_url"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3888
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/twitter/library/commerce/model/ai;->g(Ljava/lang/String;)V

    goto :goto_2

    .line 3889
    :cond_6
    const-string/jumbo v1, "title"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3890
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/twitter/library/commerce/model/ai;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 3891
    :cond_7
    const-string/jumbo v1, "card_url"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3892
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/twitter/library/commerce/model/ai;->h(Ljava/lang/String;)V

    goto :goto_2

    .line 3894
    :cond_8
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->i:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_a

    .line 3895
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v0

    .line 3896
    const-string/jumbo v1, "id"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3897
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->h()Ljava/lang/Number;

    move-result-object v0

    .line 3898
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3899
    :goto_3
    invoke-virtual {v2, v0}, Lcom/twitter/library/commerce/model/ai;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 3898
    :cond_9
    const-string/jumbo v0, "0"

    goto :goto_3

    .line 3901
    :cond_a
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2

    .line 3902
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v1

    .line 3903
    const-string/jumbo v3, "images"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3904
    invoke-static {p0, v0}, Lcom/twitter/library/api/at;->a(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;)Ljava/util/List;

    move-result-object v0

    .line 3905
    invoke-virtual {v2, v0}, Lcom/twitter/library/commerce/model/ai;->a(Ljava/util/List;)V

    goto/16 :goto_2

    .line 3906
    :cond_b
    const-string/jumbo v3, "related_tweet_ids"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 3907
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3908
    :cond_c
    :goto_4
    if-eqz v0, :cond_d

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v3, :cond_d

    .line 3909
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 3910
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->i:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v3, :cond_c

    .line 3911
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->j()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 3914
    :cond_d
    invoke-virtual {v2, v1}, Lcom/twitter/library/commerce/model/ai;->b(Ljava/util/List;)V

    goto/16 :goto_2

    .line 3915
    :cond_e
    const-string/jumbo v3, "related_pages"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 3916
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3917
    :goto_5
    if-eqz v0, :cond_15

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_15

    .line 3918
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_14

    .line 3919
    new-instance v4, Lcom/twitter/library/commerce/model/ai;

    invoke-direct {v4}, Lcom/twitter/library/commerce/model/ai;-><init>()V

    .line 3920
    :goto_6
    if-eqz v0, :cond_13

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_13

    .line 3921
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 3922
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v0, :cond_f

    .line 3923
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v0

    .line 3924
    const-string/jumbo v5, "images"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3926
    invoke-static {p0, v1}, Lcom/twitter/library/api/at;->a(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;)Ljava/util/List;

    move-result-object v0

    .line 3927
    invoke-virtual {v4, v0}, Lcom/twitter/library/commerce/model/ai;->a(Ljava/util/List;)V

    move-object v0, v1

    .line 3928
    goto :goto_6

    .line 3929
    :cond_f
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->h:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v0, :cond_11

    .line 3930
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v0

    .line 3931
    const-string/jumbo v5, "description"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 3932
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/twitter/library/commerce/model/ai;->c(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_6

    .line 3933
    :cond_10
    const-string/jumbo v5, "title"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3934
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/twitter/library/commerce/model/ai;->b(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_6

    .line 3936
    :cond_11
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->i:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v0, :cond_18

    .line 3937
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v0

    .line 3938
    const-string/jumbo v5, "id"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3939
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->h()Ljava/lang/Number;

    move-result-object v0

    .line 3940
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3941
    :goto_7
    invoke-virtual {v4, v0}, Lcom/twitter/library/commerce/model/ai;->a(Ljava/lang/String;)V

    move-object v0, v1

    .line 3942
    goto :goto_6

    .line 3940
    :cond_12
    const-string/jumbo v0, "0"

    goto :goto_7

    .line 3945
    :cond_13
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3947
    :cond_14
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto/16 :goto_5

    .line 3949
    :cond_15
    invoke-virtual {v2, v3}, Lcom/twitter/library/commerce/model/ai;->c(Ljava/util/List;)V

    goto/16 :goto_2

    .line 3951
    :cond_16
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_2

    .line 3957
    :cond_17
    new-instance v0, Lcom/twitter/library/api/av;

    invoke-direct {v0}, Lcom/twitter/library/api/av;-><init>()V

    .line 3958
    invoke-virtual {v0, v2}, Lcom/twitter/library/api/av;->a(Lcom/twitter/library/commerce/model/ai;)V

    .line 3959
    return-object v0

    :cond_18
    move-object v0, v1

    goto/16 :goto_6
.end method

.method public static M(Lcom/fasterxml/jackson/core/JsonParser;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 4102
    .line 4104
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v2, v0

    move-object v0, v1

    .line 4105
    :goto_0
    if-eqz v2, :cond_2

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_2

    .line 4106
    sget-object v3, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 4125
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    goto :goto_0

    .line 4108
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    .line 4109
    const-string/jumbo v3, "min_position"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4110
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 4111
    :cond_1
    const-string/jumbo v3, "max_position"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4112
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 4118
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 4127
    :cond_2
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 4106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static N(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4301
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4302
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 4303
    :goto_0
    if-eqz v0, :cond_2

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v2, :cond_2

    .line 4304
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_1

    .line 4305
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/twitter/model/core/TwitterUser;

    invoke-static {p0, v2}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4309
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 4306
    :cond_1
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_0

    .line 4307
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 4311
    :cond_2
    return-object v1
.end method

.method public static O(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/library/api/ao;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 5173
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5174
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 5177
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v2, v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 5178
    :goto_0
    if-eqz v1, :cond_11

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v5, :cond_11

    .line 5179
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v5, :cond_10

    .line 5180
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v1

    .line 5181
    const-string/jumbo v5, "objects"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 5182
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    move-object v6, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v6

    .line 5183
    :goto_1
    if-eqz v3, :cond_e

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v3, v5, :cond_e

    .line 5184
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v5, :cond_3

    .line 5185
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v3

    .line 5186
    const-string/jumbo v5, "users"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5187
    invoke-static {p0}, Lcom/twitter/library/api/at;->N(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/HashMap;

    move-result-object v2

    .line 5196
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto :goto_1

    .line 5188
    :cond_1
    const-string/jumbo v5, "timelines"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5189
    invoke-static {p0}, Lcom/twitter/library/api/at;->ax(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/HashMap;

    move-result-object v1

    goto :goto_2

    .line 5191
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_2

    .line 5193
    :cond_3
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v5, :cond_0

    .line 5194
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_2

    .line 5198
    :cond_4
    const-string/jumbo v5, "response"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 5199
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 5200
    :goto_3
    if-eqz v0, :cond_12

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v5, :cond_12

    .line 5201
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v5, :cond_9

    .line 5202
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v0

    .line 5203
    const-string/jumbo v5, "cursors"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5204
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 5205
    :goto_4
    if-eqz v1, :cond_7

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v5, :cond_7

    .line 5206
    sget-object v5, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    aget v1, v5, v1

    packed-switch v1, :pswitch_data_0

    .line 5222
    :cond_5
    :goto_5
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto :goto_4

    .line 5208
    :pswitch_1
    const-string/jumbo v1, "next_cursor"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5209
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 5215
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_5

    .line 5225
    :cond_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    move-object v0, v1

    :cond_7
    move-object v1, v0

    .line 5276
    :cond_8
    :goto_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_3

    .line 5227
    :cond_9
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v5, :cond_8

    .line 5228
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v0

    .line 5229
    const-string/jumbo v5, "results"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5230
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 5231
    :goto_7
    if-eqz v0, :cond_8

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v5, :cond_8

    .line 5232
    sget-object v5, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v5, v0

    packed-switch v0, :pswitch_data_1

    .line 5270
    :cond_a
    :goto_8
    :pswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_7

    .line 5234
    :pswitch_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 5235
    :goto_9
    if-eqz v0, :cond_a

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v5, :cond_a

    .line 5236
    sget-object v5, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v5, v0

    packed-switch v0, :pswitch_data_2

    .line 5258
    :cond_b
    :goto_a
    :pswitch_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_9

    .line 5238
    :pswitch_6
    const-string/jumbo v0, "timeline_id"

    .line 5239
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v5

    .line 5238
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5240
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    .line 5242
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/topic/TwitterTopic;

    .line 5243
    if-eqz v0, :cond_b

    .line 5244
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 5251
    :pswitch_7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_a

    .line 5263
    :pswitch_8
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_8

    .line 5273
    :cond_c
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_6

    .line 5279
    :cond_d
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    move-object v1, v2

    move-object v2, v3

    :cond_e
    :goto_b
    move-object v3, v2

    move-object v2, v1

    .line 5284
    :cond_f
    :goto_c
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto/16 :goto_0

    .line 5281
    :cond_10
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v5, :cond_f

    .line 5282
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_c

    .line 5287
    :cond_11
    new-instance v1, Lcom/twitter/library/api/ao;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v4, v2, v0}, Lcom/twitter/library/api/ao;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/lang/String;)V

    return-object v1

    :cond_12
    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_b

    .line 5206
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 5232
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 5236
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public static P(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/topic/TwitterTopic;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 5291
    .line 5293
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v2, v1

    .line 5294
    :goto_0
    if-eqz v0, :cond_8

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v3, :cond_8

    .line 5295
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v3, :cond_7

    .line 5296
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v0

    .line 5297
    const-string/jumbo v3, "objects"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5298
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 5299
    :goto_1
    if-eqz v1, :cond_a

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v3, :cond_a

    .line 5300
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_2

    .line 5301
    const-string/jumbo v1, "timelines"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5302
    invoke-static {p0}, Lcom/twitter/library/api/at;->ax(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/HashMap;

    move-result-object v0

    .line 5309
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto :goto_1

    .line 5304
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_2

    .line 5306
    :cond_2
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_0

    .line 5307
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_2

    .line 5311
    :cond_3
    const-string/jumbo v3, "response"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5312
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v4, v0

    move-object v0, v2

    move-object v2, v4

    .line 5313
    :goto_3
    if-eqz v2, :cond_9

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_9

    .line 5314
    sget-object v3, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 5330
    :cond_4
    :goto_4
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    goto :goto_3

    .line 5316
    :pswitch_1
    const-string/jumbo v2, "timeline_id"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5317
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/topic/TwitterTopic;

    goto :goto_4

    .line 5323
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_4

    .line 5333
    :cond_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    move-object v0, v1

    move-object v1, v2

    :goto_5
    move-object v2, v1

    move-object v1, v0

    .line 5338
    :cond_6
    :goto_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto/16 :goto_0

    .line 5335
    :cond_7
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v3, :cond_6

    .line 5336
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_6

    .line 5341
    :cond_8
    return-object v2

    :cond_9
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_5

    :cond_a
    move-object v1, v2

    goto :goto_5

    .line 5314
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static Q(Lcom/fasterxml/jackson/core/JsonParser;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5683
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    .line 5684
    const-wide/16 v0, -0x1

    .line 5685
    :goto_0
    if-eqz v2, :cond_0

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_0

    .line 5686
    sget-object v3, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 5700
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    goto :goto_0

    .line 5689
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 5693
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->j()J

    move-result-wide v0

    goto :goto_1

    .line 5702
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 5703
    new-instance v2, Lcom/twitter/model/json/common/InvalidJsonFormatException;

    const-string/jumbo v3, "Could not parse timestamp"

    invoke-direct {v2, v3}, Lcom/twitter/model/json/common/InvalidJsonFormatException;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 5705
    :cond_1
    return-wide v0

    .line 5686
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static R(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5710
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 5711
    :goto_0
    if-eqz v0, :cond_1

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_1

    .line 5712
    sget-object v1, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 5727
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 5714
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 5718
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "is_device_follow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5719
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 5729
    :goto_2
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2

    .line 5712
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static S(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/library/api/y;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5734
    new-instance v1, Lcom/twitter/library/api/y;

    invoke-direct {v1}, Lcom/twitter/library/api/y;-><init>()V

    .line 5736
    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 5737
    :goto_0
    if-eqz v0, :cond_1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v2, :cond_1

    .line 5738
    sget-object v2, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 5757
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 5740
    :pswitch_1
    const-string/jumbo v0, "normalized_phone_number"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5741
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/twitter/library/api/y;->c:Ljava/lang/String;

    goto :goto_1

    .line 5759
    :catch_0
    move-exception v0

    .line 5761
    :cond_1
    return-object v1

    .line 5746
    :pswitch_2
    const-string/jumbo v0, "valid"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5747
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/twitter/library/api/y;->a:Z

    goto :goto_1

    .line 5748
    :cond_2
    const-string/jumbo v0, "available"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5749
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/twitter/library/api/y;->b:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 5738
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static T(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5766
    const/4 v1, 0x0

    .line 5767
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 5768
    :goto_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_1

    .line 5769
    sget-object v2, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 5785
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto :goto_0

    .line 5772
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 5776
    :pswitch_2
    const-string/jumbo v1, "access_token"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5777
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 5787
    :cond_1
    return-object v0

    .line 5769
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static U(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5792
    const/4 v1, 0x0

    .line 5793
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 5794
    :goto_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_1

    .line 5795
    sget-object v2, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 5811
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto :goto_0

    .line 5798
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 5802
    :pswitch_2
    const-string/jumbo v1, "guest_token"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5803
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 5813
    :cond_1
    return-object v0

    .line 5795
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static V(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/twitter/library/api/q;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5818
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5819
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 5820
    :goto_0
    if-eqz v0, :cond_0

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v2, :cond_0

    .line 5821
    sget-object v2, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 5830
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 5823
    :pswitch_0
    invoke-static {p0}, Lcom/twitter/library/api/at;->aA(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/library/api/q;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5833
    :cond_0
    return-object v1

    .line 5821
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public static W(Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5871
    const/4 v1, 0x0

    .line 5872
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v3, v0

    move v0, v1

    move-object v1, v3

    .line 5873
    :goto_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_1

    .line 5874
    sget-object v2, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 5882
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    .line 5886
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto :goto_0

    .line 5876
    :pswitch_0
    const-string/jumbo v1, "is_numeric"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5877
    const/4 v0, 0x1

    goto :goto_1

    .line 5889
    :cond_1
    return v0

    .line 5874
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public static X(Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5893
    const/4 v1, 0x0

    .line 5894
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v3, v0

    move v0, v1

    move-object v1, v3

    .line 5895
    :goto_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_1

    .line 5896
    sget-object v2, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 5904
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    .line 5908
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto :goto_0

    .line 5898
    :pswitch_0
    const-string/jumbo v1, "is_valid"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5899
    const/4 v0, 0x1

    goto :goto_1

    .line 5911
    :cond_1
    return v0

    .line 5896
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public static Y(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/library/api/x;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5915
    const/4 v2, 0x0

    .line 5916
    const/4 v1, 0x0

    .line 5918
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v5, v0

    move-object v0, v1

    move v1, v2

    move-object v2, v5

    .line 5919
    :goto_0
    if-eqz v2, :cond_1

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_1

    .line 5920
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v3

    .line 5921
    sget-object v4, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v2

    aget v2, v4, v2

    packed-switch v2, :pswitch_data_0

    .line 5936
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    .line 5939
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    goto :goto_0

    .line 5924
    :pswitch_1
    const-string/jumbo v2, "pass"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5925
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->m()Z

    move-result v1

    goto :goto_1

    .line 5930
    :pswitch_2
    const-string/jumbo v2, "message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5931
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 5941
    :cond_1
    new-instance v2, Lcom/twitter/library/api/x;

    invoke-direct {v2, v1, v0}, Lcom/twitter/library/api/x;-><init>(ZLjava/lang/String;)V

    return-object v2

    .line 5921
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static Z(Lcom/fasterxml/jackson/core/JsonParser;)Lbvd;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5945
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 5946
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5947
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 5948
    :goto_0
    if-eqz v0, :cond_e

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v3, :cond_e

    .line 5949
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v3, :cond_6

    const-string/jumbo v3, "emails"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 5950
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v5, v0

    .line 5951
    :goto_1
    if-eqz v5, :cond_1

    move v0, v1

    :goto_2
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v5, v3, :cond_2

    move v3, v1

    :goto_3
    and-int/2addr v0, v3

    if-eqz v0, :cond_d

    .line 5952
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v0, :cond_5

    .line 5954
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 5955
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    move-object v5, v3

    move-object v3, v4

    .line 5956
    :goto_4
    if-eqz v5, :cond_3

    sget-object v8, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v5, v8, :cond_3

    .line 5957
    sget-object v8, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v5

    aget v5, v8, v5

    packed-switch v5, :pswitch_data_0

    .line 5979
    :cond_0
    :goto_5
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    goto :goto_4

    :cond_1
    move v0, v2

    .line 5951
    goto :goto_2

    :cond_2
    move v3, v2

    goto :goto_3

    .line 5959
    :pswitch_1
    const-string/jumbo v5, "email"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5960
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 5965
    :pswitch_2
    const-string/jumbo v5, "email_verified"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5966
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->m()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_5

    .line 5972
    :pswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_5

    .line 5981
    :cond_3
    if-eqz v3, :cond_4

    .line 5982
    new-instance v5, Lbvc;

    invoke-direct {v5, v3, v0}, Lbvc;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5987
    :cond_4
    :goto_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    .line 5984
    :cond_5
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v0, :cond_4

    .line 5985
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_6

    .line 5989
    :cond_6
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v3, :cond_d

    const-string/jumbo v0, "phone_numbers"

    .line 5990
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5991
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v5, v0

    .line 5992
    :goto_7
    if-eqz v5, :cond_8

    move v0, v1

    :goto_8
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v5, v3, :cond_9

    move v3, v1

    :goto_9
    and-int/2addr v0, v3

    if-eqz v0, :cond_d

    .line 5993
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v0, :cond_c

    .line 5995
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 5996
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    move-object v5, v3

    move-object v3, v4

    .line 5997
    :goto_a
    if-eqz v5, :cond_a

    sget-object v8, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v5, v8, :cond_a

    .line 5998
    sget-object v8, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v5

    aget v5, v8, v5

    packed-switch v5, :pswitch_data_1

    .line 6021
    :cond_7
    :goto_b
    :pswitch_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    goto :goto_a

    :cond_8
    move v0, v2

    .line 5992
    goto :goto_8

    :cond_9
    move v3, v2

    goto :goto_9

    .line 6000
    :pswitch_5
    const-string/jumbo v5, "phone_number"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 6001
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    .line 6006
    :pswitch_6
    const-string/jumbo v5, "phone_number_verified"

    .line 6007
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v8

    .line 6006
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 6008
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_b

    .line 6014
    :pswitch_7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_b

    .line 6023
    :cond_a
    if-eqz v3, :cond_b

    .line 6024
    new-instance v5, Lbvf;

    invoke-direct {v5, v3, v0}, Lbvf;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6029
    :cond_b
    :goto_c
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v5, v0

    goto :goto_7

    .line 6026
    :cond_c
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v0, :cond_b

    .line 6027
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_c

    .line 6032
    :cond_d
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto/16 :goto_0

    .line 6034
    :cond_e
    new-instance v0, Lbvd;

    invoke-direct {v0, v6, v7}, Lbvd;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object v0

    .line 5957
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 5998
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method private static a(Lcom/fasterxml/jackson/core/JsonParser;Ljava/util/ArrayList;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/twitter/model/core/cs;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 1996
    .line 1997
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v2, v0

    move v0, v1

    .line 1998
    :goto_0
    if-eqz v2, :cond_1

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_1

    .line 1999
    sget-object v3, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 2018
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    goto :goto_0

    .line 2001
    :pswitch_1
    const-string/jumbo v2, "context_type"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2002
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/model/search/j;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 2007
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 2011
    :pswitch_3
    const-class v2, Lcom/twitter/model/core/cs;

    invoke-static {p0, v2}, Lcom/twitter/model/json/common/g;->d(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 2020
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    return v0

    .line 1999
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6169
    sget-object v0, Lcom/twitter/model/json/common/g;->a:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/core/JsonFactory;->a(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    .line 6170
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    .line 6171
    return-object v0
.end method

.method public static a(Lcom/twitter/model/core/cj;)Lcom/twitter/library/api/ak;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 3378
    .line 3384
    invoke-virtual {p0}, Lcom/twitter/model/core/cj;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v5, v6

    move-object v4, v6

    move-object v3, v6

    move-object v2, v6

    move-object v1, v6

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cg;

    .line 3385
    iget-object v7, v0, Lcom/twitter/model/core/cg;->c:Ljava/lang/String;

    .line 3386
    if-eqz v7, :cond_1

    const-string/jumbo v9, "The user failed validation: "

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3387
    const-string/jumbo v9, "The user failed validation: "

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 3390
    :cond_1
    const-string/jumbo v9, "name"

    iget-object v10, v0, Lcom/twitter/model/core/cg;->e:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-nez v1, :cond_2

    move-object v1, v7

    .line 3391
    goto :goto_0

    .line 3392
    :cond_2
    const-string/jumbo v9, "screen_name"

    iget-object v10, v0, Lcom/twitter/model/core/cg;->e:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    if-nez v4, :cond_3

    move-object v4, v7

    .line 3393
    goto :goto_0

    .line 3394
    :cond_3
    const-string/jumbo v9, "password"

    iget-object v10, v0, Lcom/twitter/model/core/cg;->e:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    if-nez v5, :cond_4

    move-object v5, v7

    .line 3395
    goto :goto_0

    .line 3396
    :cond_4
    const-string/jumbo v9, "email"

    iget-object v10, v0, Lcom/twitter/model/core/cg;->e:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    if-nez v2, :cond_5

    move-object v2, v7

    .line 3397
    goto :goto_0

    .line 3398
    :cond_5
    const-string/jumbo v9, "devices"

    iget-object v0, v0, Lcom/twitter/model/core/cg;->e:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez v3, :cond_0

    move-object v3, v7

    .line 3399
    goto :goto_0

    .line 3402
    :cond_6
    new-instance v0, Lcom/twitter/library/api/ak;

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/twitter/library/api/ak;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/library/api/aq;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Lcom/twitter/library/api/aq",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 283
    .line 286
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    move-object v0, v3

    move-object v1, v3

    move-object v2, v3

    .line 289
    :goto_0
    if-eqz v4, :cond_2

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v4, v5, :cond_2

    .line 290
    sget-object v5, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 319
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    goto :goto_0

    .line 292
    :pswitch_0
    const-string/jumbo v5, "users"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 293
    const-class v1, Lcom/twitter/model/core/TwitterUser;

    invoke-static {p0, v1}, Lcom/twitter/model/json/common/g;->d(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 295
    :cond_1
    :goto_2
    if-eqz v4, :cond_0

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v4, v5, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    goto :goto_2

    .line 303
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v4

    .line 304
    const-string/jumbo v5, "next_cursor_str"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 311
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 321
    :cond_2
    if-nez v1, :cond_3

    move-object v0, v3

    .line 324
    :goto_3
    return-object v0

    :cond_3
    new-instance v0, Lcom/twitter/library/api/aq;

    invoke-direct {v0, v2, v1}, Lcom/twitter/library/api/aq;-><init>(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_3

    .line 290
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Lcom/fasterxml/jackson/core/JsonParser;J)Lcom/twitter/library/api/search/TwitterTypeAhead;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3190
    const/4 v2, 0x0

    .line 3191
    const/4 v11, 0x0

    .line 3192
    const/4 v9, 0x0

    .line 3193
    const/4 v12, 0x0

    .line 3194
    const/4 v10, 0x0

    .line 3195
    const/4 v1, 0x0

    .line 3197
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object/from16 v17, v0

    move-object v0, v1

    move-object/from16 v1, v17

    .line 3198
    :goto_0
    if-eqz v1, :cond_4

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v3, :cond_4

    .line 3199
    sget-object v3, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v1, v12

    .line 3240
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    move v12, v1

    move-object v1, v3

    goto :goto_0

    .line 3201
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v1

    .line 3202
    const-string/jumbo v3, "topic"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3203
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v2

    move v1, v12

    goto :goto_1

    .line 3204
    :cond_1
    const-string/jumbo v3, "filter"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3205
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v11

    move v1, v12

    goto :goto_1

    .line 3206
    :cond_2
    const-string/jumbo v3, "location"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3207
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v9

    move v1, v12

    goto :goto_1

    .line 3212
    :pswitch_2
    const-string/jumbo v1, "rounded_score"

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3213
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->i()I

    move-result v1

    goto :goto_1

    .line 3218
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v1

    .line 3219
    const-string/jumbo v3, "follow"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3220
    const/4 v10, 0x1

    move v1, v12

    goto :goto_1

    .line 3225
    :pswitch_4
    const-string/jumbo v1, "tokens"

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3226
    invoke-static/range {p0 .. p0}, Lcom/twitter/library/api/at;->as(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    move v1, v12

    goto :goto_1

    .line 3228
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    move v1, v12

    .line 3230
    goto :goto_1

    .line 3233
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    move v1, v12

    .line 3234
    goto :goto_1

    .line 3243
    :cond_4
    if-eqz v2, :cond_5

    if-nez v0, :cond_6

    .line 3244
    :cond_5
    const/4 v0, 0x0

    .line 3246
    :goto_2
    return-object v0

    :cond_6
    new-instance v13, Lcom/twitter/library/api/search/TwitterTypeAhead;

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/16 v16, 0x0

    new-instance v1, Lcom/twitter/library/api/search/TwitterSearchQuery;

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    move-wide/from16 v4, p1

    invoke-direct/range {v1 .. v11}, Lcom/twitter/library/api/search/TwitterSearchQuery;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcss;Ljava/lang/String;ZLjava/lang/String;)V

    const/4 v9, 0x0

    move-object v2, v13

    move v3, v14

    move v4, v12

    move v5, v15

    move-object v6, v0

    move-object/from16 v7, v16

    move-object v8, v1

    invoke-direct/range {v2 .. v9}, Lcom/twitter/library/api/search/TwitterTypeAhead;-><init>(IIILjava/util/ArrayList;Lcom/twitter/model/core/TwitterUser;Lcom/twitter/library/api/search/TwitterSearchQuery;Ljava/lang/String;)V

    move-object v0, v13

    goto :goto_2

    .line 3199
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Lcom/fasterxml/jackson/core/JsonParser;Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/library/api/search/h;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 2499
    .line 2505
    const/4 v3, -0x1

    .line 2508
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    move-object v6, v1

    move v4, v5

    move v10, v5

    move-object v9, v2

    move-object v8, v2

    move-object v7, v2

    move-object v1, v2

    .line 2509
    :goto_0
    if-eqz v6, :cond_9

    sget-object v11, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v6, v11, :cond_9

    .line 2510
    sget-object v11, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v6

    aget v6, v11, v6

    packed-switch v6, :pswitch_data_0

    .line 2578
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    goto :goto_0

    .line 2512
    :pswitch_1
    const-string/jumbo v6, "modules"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2513
    invoke-static {p0, p1}, Lcom/twitter/library/api/at;->h(Lcom/fasterxml/jackson/core/JsonParser;Lcom/twitter/model/core/TwitterUser;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_1

    .line 2515
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 2520
    :pswitch_2
    const-string/jumbo v6, "metadata"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2521
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    .line 2522
    :goto_2
    if-eqz v6, :cond_0

    sget-object v11, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v6, v11, :cond_0

    .line 2523
    sget-object v11, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v6

    aget v6, v11, v6

    packed-switch v6, :pswitch_data_1

    .line 2567
    :cond_2
    :goto_3
    :pswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    goto :goto_2

    .line 2525
    :pswitch_4
    const-string/jumbo v6, "cursor"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2526
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 2527
    :cond_3
    const-string/jumbo v6, "takeover_type"

    .line 2528
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v11

    .line 2527
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2529
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 2530
    :cond_4
    const-string/jumbo v6, "can_subscribe"

    .line 2531
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v11

    .line 2530
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2532
    const-string/jumbo v6, "true"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_3

    .line 2533
    :cond_5
    const-string/jumbo v6, "event_id"

    .line 2534
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v11

    .line 2533
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2535
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    .line 2536
    :cond_6
    const-string/jumbo v6, "event_page_type"

    .line 2537
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v11

    .line 2536
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2538
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 2543
    :pswitch_5
    const-string/jumbo v6, "refresh_interval_in_sec"

    .line 2544
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v11

    .line 2543
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2545
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->o()I

    move-result v3

    goto :goto_3

    .line 2550
    :pswitch_6
    const-string/jumbo v6, "has_events_response"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move v4, v0

    .line 2551
    goto/16 :goto_3

    .line 2552
    :cond_7
    const-string/jumbo v6, "can_subscribe"

    .line 2553
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v11

    .line 2552
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v10, v0

    .line 2554
    goto/16 :goto_3

    .line 2560
    :pswitch_7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_3

    .line 2570
    :cond_8
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_1

    .line 2581
    :cond_9
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2582
    if-nez v1, :cond_a

    .line 2583
    new-instance v0, Lcom/twitter/library/util/InvalidDataException;

    const-string/jumbo v1, "Search did not return results module"

    invoke-direct {v0, v1}, Lcom/twitter/library/util/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2586
    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 2587
    :cond_b
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2588
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/api/search/i;

    .line 2589
    iget-boolean v12, v0, Lcom/twitter/library/api/search/i;->j:Z

    if-eqz v12, :cond_c

    .line 2590
    add-int/lit8 v5, v5, 0x1

    .line 2592
    :cond_c
    iget-boolean v12, v0, Lcom/twitter/library/api/search/i;->l:Z

    if-eqz v12, :cond_b

    iget-object v12, v0, Lcom/twitter/library/api/search/i;->k:Ljava/util/List;

    if-eqz v12, :cond_b

    iget-object v12, v0, Lcom/twitter/library/api/search/i;->k:Ljava/util/List;

    .line 2593
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_b

    .line 2594
    iget-object v0, v0, Lcom/twitter/library/api/search/i;->k:Ljava/util/List;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 2598
    :cond_d
    new-instance v0, Lcom/twitter/library/api/search/h;

    invoke-direct/range {v0 .. v10}, Lcom/twitter/library/api/search/h;-><init>(Ljava/util/ArrayList;Ljava/lang/String;IZILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    .line 2510
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 2523
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private static a(Lcom/fasterxml/jackson/core/JsonParser;Ljava/util/HashMap;)Lcom/twitter/model/core/TwitterSocialProof;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;)",
            "Lcom/twitter/model/core/TwitterSocialProof;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 4444
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4448
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move v1, v5

    move-object v2, v4

    move-object v3, v4

    .line 4449
    :goto_0
    if-eqz v0, :cond_7

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v7, :cond_7

    .line 4450
    sget-object v7, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v7, v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v0, v1

    move-object v1, v2

    move-object v2, v3

    .line 4513
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    move-object v9, v3

    move-object v3, v2

    move-object v2, v1

    move v1, v0

    move-object v0, v9

    goto :goto_0

    .line 4452
    :pswitch_1
    const-string/jumbo v0, "type"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4453
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    move v9, v1

    move-object v1, v2

    move-object v2, v0

    move v0, v9

    goto :goto_1

    .line 4454
    :cond_1
    const-string/jumbo v0, "text"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4455
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    move-object v2, v3

    move-object v9, v0

    move v0, v1

    move-object v1, v9

    goto :goto_1

    .line 4460
    :pswitch_2
    const-string/jumbo v0, "users"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4461
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 4462
    :goto_2
    if-eqz v0, :cond_0

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v7, :cond_0

    .line 4463
    sget-object v7, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v7, v0

    packed-switch v0, :pswitch_data_1

    .line 4498
    :cond_2
    :goto_3
    :pswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2

    .line 4465
    :pswitch_4
    const-string/jumbo v0, "count"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4466
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_3

    .line 4471
    :pswitch_5
    const-string/jumbo v0, "ids"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4472
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 4473
    :goto_4
    if-eqz v0, :cond_2

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v7, :cond_2

    .line 4474
    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->h:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v7, :cond_4

    .line 4476
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    .line 4477
    if-eqz v0, :cond_3

    .line 4478
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4483
    :cond_3
    :goto_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_4

    .line 4481
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_5

    .line 4486
    :cond_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_3

    .line 4491
    :pswitch_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_3

    .line 4501
    :cond_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    move v0, v1

    move-object v1, v2

    move-object v2, v3

    .line 4503
    goto/16 :goto_1

    .line 4506
    :pswitch_7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    move v0, v1

    move-object v1, v2

    move-object v2, v3

    .line 4507
    goto/16 :goto_1

    .line 4519
    :cond_7
    if-eqz v2, :cond_9

    .line 4522
    sget-object v0, Lcom/twitter/library/api/at;->b:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/twitter/library/api/at;->b:Ljava/util/Map;

    .line 4523
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_6
    move-object v9, v4

    move-object v4, v2

    move v2, v1

    move v1, v0

    move-object v0, v9

    .line 4552
    :goto_7
    new-instance v3, Lcom/twitter/model/core/cq;

    invoke-direct {v3}, Lcom/twitter/model/core/cq;-><init>()V

    .line 4553
    invoke-virtual {v3, v1}, Lcom/twitter/model/core/cq;->a(I)Lcom/twitter/model/core/cq;

    move-result-object v1

    .line 4554
    invoke-virtual {v1, v4}, Lcom/twitter/model/core/cq;->a(Ljava/lang/String;)Lcom/twitter/model/core/cq;

    move-result-object v1

    .line 4555
    invoke-virtual {v1, v2}, Lcom/twitter/model/core/cq;->b(I)Lcom/twitter/model/core/cq;

    move-result-object v1

    .line 4556
    invoke-virtual {v1, v0}, Lcom/twitter/model/core/cq;->b(Ljava/lang/String;)Lcom/twitter/model/core/cq;

    move-result-object v0

    .line 4557
    invoke-virtual {v0}, Lcom/twitter/model/core/cq;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterSocialProof;

    .line 4552
    return-object v0

    .line 4523
    :cond_8
    const/16 v0, 0x1c

    goto :goto_6

    .line 4525
    :cond_9
    const-string/jumbo v0, "favorite"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4526
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4527
    const/16 v0, 0x11

    move v2, v1

    move v1, v0

    move-object v0, v4

    .line 4529
    goto :goto_7

    .line 4531
    :cond_a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 4532
    sub-int v3, v1, v7

    .line 4533
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->c()Ljava/lang/String;

    move-result-object v2

    .line 4534
    if-le v7, v8, :cond_b

    .line 4535
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    invoke-virtual {v0}, Lcom/twitter/model/core/TwitterUser;->c()Ljava/lang/String;

    move-result-object v1

    .line 4539
    :goto_8
    if-nez v3, :cond_c

    .line 4540
    const/16 v0, 0x10

    :goto_9
    move-object v4, v2

    move v2, v3

    move v9, v0

    move-object v0, v1

    move v1, v9

    .line 4544
    goto :goto_7

    :cond_b
    move-object v1, v4

    .line 4537
    goto :goto_8

    .line 4542
    :cond_c
    const/16 v0, 0x21

    goto :goto_9

    .line 4546
    :cond_d
    const/4 v0, -0x1

    move v2, v1

    move v1, v0

    move-object v0, v4

    .line 4548
    goto :goto_7

    .line 4450
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 4463
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method private static a(Lcom/twitter/model/json/timeline/wtf/JsonSocialProof;Ljava/util/Map;)Lcom/twitter/model/core/TwitterSocialProof;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/json/timeline/wtf/JsonSocialProof;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;)",
            "Lcom/twitter/model/core/TwitterSocialProof;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 5077
    if-eqz p0, :cond_4

    .line 5078
    iget-object v0, p0, Lcom/twitter/model/json/timeline/wtf/JsonSocialProof;->a:Lcom/twitter/model/json/core/b;

    iget v0, v0, Lcom/twitter/model/json/core/b;->b:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/twitter/model/json/timeline/wtf/JsonSocialProof;->b:[Ljava/lang/String;

    .line 5079
    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 5080
    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/twitter/model/json/timeline/wtf/JsonSocialProof;->b:[Ljava/lang/String;

    array-length v0, v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 5081
    iget-object v5, p0, Lcom/twitter/model/json/timeline/wtf/JsonSocialProof;->b:[Ljava/lang/String;

    array-length v6, v5

    move v3, v1

    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v0, v5, v3

    .line 5082
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    .line 5083
    if-eqz v0, :cond_0

    .line 5084
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5081
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 5087
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 5088
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 5089
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    iget-object v5, v0, Lcom/twitter/model/core/TwitterUser;->d:Ljava/lang/String;

    .line 5090
    if-le v3, v7, :cond_2

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    iget-object v2, v0, Lcom/twitter/model/core/TwitterUser;->d:Ljava/lang/String;

    .line 5092
    :cond_2
    const/4 v0, 0x2

    if-le v3, v0, :cond_3

    add-int/lit8 v0, v3, -0x2

    .line 5093
    :goto_1
    new-instance v1, Lcom/twitter/model/core/cq;

    invoke-direct {v1}, Lcom/twitter/model/core/cq;-><init>()V

    iget-object v3, p0, Lcom/twitter/model/json/timeline/wtf/JsonSocialProof;->a:Lcom/twitter/model/json/core/b;

    iget v3, v3, Lcom/twitter/model/json/core/b;->b:I

    .line 5094
    invoke-virtual {v1, v3}, Lcom/twitter/model/core/cq;->a(I)Lcom/twitter/model/core/cq;

    move-result-object v1

    .line 5095
    invoke-virtual {v1, v5}, Lcom/twitter/model/core/cq;->a(Ljava/lang/String;)Lcom/twitter/model/core/cq;

    move-result-object v1

    .line 5096
    invoke-virtual {v1, v2}, Lcom/twitter/model/core/cq;->b(Ljava/lang/String;)Lcom/twitter/model/core/cq;

    move-result-object v1

    .line 5097
    invoke-virtual {v1, v0}, Lcom/twitter/model/core/cq;->g(I)Lcom/twitter/model/core/cq;

    move-result-object v0

    .line 5098
    invoke-virtual {v0}, Lcom/twitter/model/core/cq;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterSocialProof;

    .line 5102
    :goto_2
    return-object v0

    :cond_3
    move v0, v1

    .line 5092
    goto :goto_1

    :cond_4
    move-object v0, v2

    .line 5102
    goto :goto_2
.end method

.method public static a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/twitter/model/core/cs;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/cs;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;)",
            "Lcom/twitter/model/core/cs;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5541
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cs;

    .line 5542
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/twitter/model/core/cs;->E:Lcom/twitter/model/core/TwitterUser;

    if-eqz v1, :cond_1

    .line 5543
    iget-object v1, v0, Lcom/twitter/model/core/cs;->E:Lcom/twitter/model/core/TwitterUser;

    iget-wide v4, v1, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/core/TwitterUser;

    .line 5544
    if-eqz v1, :cond_2

    .line 5545
    iput-object v1, v0, Lcom/twitter/model/core/cs;->E:Lcom/twitter/model/core/TwitterUser;

    .line 5560
    :cond_0
    invoke-static {v0, p2}, Lcom/twitter/library/api/at;->a(Lcom/twitter/model/core/cs;Ljava/util/HashMap;)Z

    move-result v1

    if-nez v1, :cond_3

    move-object v0, v2

    .line 5578
    :cond_1
    :goto_0
    return-object v0

    .line 5546
    :cond_2
    invoke-virtual {v0}, Lcom/twitter/model/core/cs;->g()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5551
    new-instance v1, Lbiv;

    invoke-direct {v1}, Lbiv;-><init>()V

    .line 5552
    const-string/jumbo v3, "Missing user tweetId"

    iget-wide v4, v0, Lcom/twitter/model/core/cs;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    .line 5553
    const-string/jumbo v3, "Missing user usersMap size"

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    .line 5554
    const-string/jumbo v3, "Missing user tweetsMap size"

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lbiv;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    .line 5555
    new-instance v3, Lcom/twitter/model/json/common/InvalidJsonFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Missing user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lcom/twitter/model/core/cs;->E:Lcom/twitter/model/core/TwitterUser;

    iget-wide v6, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/twitter/model/json/common/InvalidJsonFormatException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lbiv;->a(Ljava/lang/Throwable;)Lbiv;

    .line 5557
    invoke-static {v1}, Lbix;->a(Lbiv;)V

    move-object v0, v2

    .line 5558
    goto :goto_0

    .line 5563
    :cond_3
    iget-object v1, v0, Lcom/twitter/model/core/cs;->o:Lcom/twitter/model/core/cs;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/twitter/model/core/cs;->o:Lcom/twitter/model/core/cs;

    iget-object v1, v1, Lcom/twitter/model/core/cs;->E:Lcom/twitter/model/core/TwitterUser;

    if-eqz v1, :cond_1

    .line 5564
    iget-object v1, v0, Lcom/twitter/model/core/cs;->o:Lcom/twitter/model/core/cs;

    iget-object v1, v1, Lcom/twitter/model/core/cs;->E:Lcom/twitter/model/core/TwitterUser;

    iget-wide v4, v1, Lcom/twitter/model/core/TwitterUser;->c:J

    .line 5565
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/core/TwitterUser;

    .line 5566
    if-eqz v1, :cond_4

    .line 5567
    iget-object v3, v0, Lcom/twitter/model/core/cs;->o:Lcom/twitter/model/core/cs;

    iput-object v1, v3, Lcom/twitter/model/core/cs;->E:Lcom/twitter/model/core/TwitterUser;

    .line 5573
    iget-object v1, v0, Lcom/twitter/model/core/cs;->o:Lcom/twitter/model/core/cs;

    invoke-static {v1, p2}, Lcom/twitter/library/api/at;->a(Lcom/twitter/model/core/cs;Ljava/util/HashMap;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v0, v2

    .line 5574
    goto/16 :goto_0

    .line 5569
    :cond_4
    new-instance v1, Lcom/twitter/model/json/common/InvalidJsonFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Missing original user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/twitter/model/core/cs;->o:Lcom/twitter/model/core/cs;

    iget-object v0, v0, Lcom/twitter/model/core/cs;->E:Lcom/twitter/model/core/TwitterUser;

    iget-wide v4, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/twitter/model/json/common/InvalidJsonFormatException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lbix;->a(Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 5571
    goto/16 :goto_0
.end method

.method private static a(Lcom/fasterxml/jackson/core/JsonParser;Ljava/util/Map;)Lcom/twitter/model/moments/at;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/moments/ad;",
            ">;)",
            "Lcom/twitter/model/moments/at;"
        }
    .end annotation

    .prologue
    .line 4710
    const-class v0, Lcom/twitter/model/json/moments/JsonSuggestedMomentsInjection;

    .line 4711
    invoke-static {p0, v0}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/json/moments/JsonSuggestedMomentsInjection;

    .line 4712
    invoke-virtual {v0, p1}, Lcom/twitter/model/json/moments/JsonSuggestedMomentsInjection;->a(Ljava/util/Map;)Lcom/twitter/model/moments/at;

    move-result-object v0

    return-object v0
.end method

.method private static a(ILcom/fasterxml/jackson/core/JsonParser;Ljava/util/Map;)Lcom/twitter/model/moments/bg;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/moments/ad;",
            ">;)",
            "Lcom/twitter/model/moments/bg;"
        }
    .end annotation

    .prologue
    .line 4753
    if-eqz p2, :cond_0

    .line 4754
    const-class v0, Lcom/twitter/model/json/moments/JsonTimelineMomentId;

    .line 4755
    invoke-static {p1, v0}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/json/moments/JsonTimelineMomentId;

    .line 4756
    if-eqz v0, :cond_0

    .line 4757
    iget-wide v0, v0, Lcom/twitter/model/json/moments/JsonTimelineMomentId;->a:J

    .line 4758
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/ad;

    .line 4759
    if-eqz v0, :cond_0

    .line 4760
    new-instance v1, Lcom/twitter/model/moments/bg;

    invoke-direct {v1, p0, v0}, Lcom/twitter/model/moments/bg;-><init>(ILcom/twitter/model/moments/ad;)V

    move-object v0, v1

    .line 4764
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(ILcom/fasterxml/jackson/core/JsonParser;Ljava/util/Map;Lcom/twitter/model/timeline/bq;)Lcom/twitter/model/timeline/az;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/moments/ad;",
            ">;",
            "Lcom/twitter/model/timeline/bq;",
            ")",
            "Lcom/twitter/model/timeline/az;"
        }
    .end annotation

    .prologue
    .line 4743
    invoke-static {p0, p1, p2}, Lcom/twitter/library/api/at;->a(ILcom/fasterxml/jackson/core/JsonParser;Ljava/util/Map;)Lcom/twitter/model/moments/bg;

    move-result-object v0

    .line 4744
    if-eqz v0, :cond_0

    .line 4745
    invoke-virtual {p3, v0}, Lcom/twitter/model/timeline/bq;->a(Lcom/twitter/model/moments/bg;)Lcom/twitter/model/timeline/az;

    .line 4747
    :cond_0
    return-object p3
.end method

.method private static a(Lcom/fasterxml/jackson/core/JsonParser;Lcom/twitter/model/timeline/bn;)Lcom/twitter/model/timeline/az;
    .locals 7

    .prologue
    .line 4718
    const-class v0, Lcom/twitter/model/json/timeline/JsonTimelineMessage;

    invoke-static {p0, v0}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/twitter/model/json/timeline/JsonTimelineMessage;

    .line 4721
    if-nez v6, :cond_1

    .line 4736
    :cond_0
    :goto_0
    return-object p1

    .line 4724
    :cond_1
    iget-object v0, v6, Lcom/twitter/model/json/timeline/JsonTimelineMessage;->c:Lcom/twitter/model/json/timeline/JsonInlinePromptTwoActions;

    if-eqz v0, :cond_3

    iget-object v0, v6, Lcom/twitter/model/json/timeline/JsonTimelineMessage;->c:Lcom/twitter/model/json/timeline/JsonInlinePromptTwoActions;

    invoke-virtual {v0}, Lcom/twitter/model/json/timeline/JsonInlinePromptTwoActions;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4725
    iget-object v4, v6, Lcom/twitter/model/json/timeline/JsonTimelineMessage;->c:Lcom/twitter/model/json/timeline/JsonInlinePromptTwoActions;

    .line 4726
    new-instance v0, Lcom/twitter/model/timeline/bk;

    iget-object v1, v4, Lcom/twitter/model/json/timeline/JsonInlinePromptTwoActions;->a:Ljava/lang/String;

    iget-object v2, v4, Lcom/twitter/model/json/timeline/JsonInlinePromptTwoActions;->b:Ljava/lang/String;

    iget-object v3, v4, Lcom/twitter/model/json/timeline/JsonInlinePromptTwoActions;->c:Lcom/twitter/model/timeline/s;

    iget-object v4, v4, Lcom/twitter/model/json/timeline/JsonInlinePromptTwoActions;->d:Lcom/twitter/model/timeline/s;

    iget-boolean v5, v6, Lcom/twitter/model/json/timeline/JsonTimelineMessage;->b:Z

    invoke-direct/range {v0 .. v5}, Lcom/twitter/model/timeline/bk;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/timeline/s;Lcom/twitter/model/timeline/s;Z)V

    invoke-virtual {p1, v0}, Lcom/twitter/model/timeline/bn;->a(Lcom/twitter/model/timeline/bk;)Lcom/twitter/model/timeline/bn;

    .line 4733
    :cond_2
    :goto_1
    iget-object v0, v6, Lcom/twitter/model/json/timeline/JsonTimelineMessage;->a:Lcom/twitter/model/timeline/al;

    if-eqz v0, :cond_0

    .line 4734
    iget-object v0, v6, Lcom/twitter/model/json/timeline/JsonTimelineMessage;->a:Lcom/twitter/model/timeline/al;

    invoke-virtual {p1, v0}, Lcom/twitter/model/timeline/bn;->a(Lcom/twitter/model/timeline/al;)Lcom/twitter/model/timeline/az;

    goto :goto_0

    .line 4728
    :cond_3
    iget-object v0, v6, Lcom/twitter/model/json/timeline/JsonTimelineMessage;->d:Lcom/twitter/model/json/timeline/JsonInlinePrompt;

    if-eqz v0, :cond_2

    iget-object v0, v6, Lcom/twitter/model/json/timeline/JsonTimelineMessage;->d:Lcom/twitter/model/json/timeline/JsonInlinePrompt;

    invoke-virtual {v0}, Lcom/twitter/model/json/timeline/JsonInlinePrompt;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4729
    iget-object v4, v6, Lcom/twitter/model/json/timeline/JsonTimelineMessage;->d:Lcom/twitter/model/json/timeline/JsonInlinePrompt;

    .line 4730
    new-instance v0, Lcom/twitter/model/timeline/bk;

    iget-object v1, v4, Lcom/twitter/model/json/timeline/JsonInlinePrompt;->a:Ljava/lang/String;

    iget-object v2, v4, Lcom/twitter/model/json/timeline/JsonInlinePrompt;->b:Ljava/lang/String;

    iget-object v3, v4, Lcom/twitter/model/json/timeline/JsonInlinePrompt;->c:Lcom/twitter/model/timeline/s;

    iget-object v4, v4, Lcom/twitter/model/json/timeline/JsonInlinePrompt;->d:Lcom/twitter/model/timeline/s;

    iget-boolean v5, v6, Lcom/twitter/model/json/timeline/JsonTimelineMessage;->b:Z

    invoke-direct/range {v0 .. v5}, Lcom/twitter/model/timeline/bk;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/timeline/s;Lcom/twitter/model/timeline/s;Z)V

    invoke-virtual {p1, v0}, Lcom/twitter/model/timeline/bn;->a(Lcom/twitter/model/timeline/bk;)Lcom/twitter/model/timeline/bn;

    goto :goto_1
.end method

.method private static a(Lcom/fasterxml/jackson/core/JsonParser;Lcom/twitter/model/timeline/cl;)Lcom/twitter/model/timeline/az;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4770
    const/4 v5, 0x0

    .line 4771
    const/4 v6, 0x0

    .line 4772
    const/4 v7, 0x0

    .line 4773
    const/16 v22, 0x0

    .line 4774
    const/4 v8, 0x0

    .line 4775
    const/4 v3, 0x0

    .line 4776
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    move-object/from16 v24, v2

    move-object v2, v3

    move-object/from16 v3, v24

    .line 4777
    :goto_0
    if-eqz v3, :cond_7

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v3, v4, :cond_7

    .line 4778
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v9

    .line 4779
    sget-object v4, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move-object/from16 v24, v6

    move-object v6, v5

    move-object/from16 v5, v24

    .line 4826
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    move-object/from16 v24, v5

    move-object v5, v6

    move-object/from16 v6, v24

    .line 4827
    goto :goto_0

    .line 4781
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    move-object/from16 v24, v6

    move-object v6, v5

    move-object/from16 v5, v24

    .line 4782
    goto :goto_1

    .line 4785
    :pswitch_2
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/twitter/model/topic/TwitterTopic;->c(Ljava/lang/String;)I

    move-result v3

    .line 4786
    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    .line 4788
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    move-object/from16 v3, v22

    move-object v4, v7

    move-object v7, v2

    move-object v2, v8

    move-object/from16 v24, v6

    move-object v6, v5

    move-object/from16 v5, v24

    .line 4789
    :goto_2
    if-eqz v7, :cond_5

    sget-object v8, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v7, v8, :cond_5

    .line 4790
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v8

    .line 4791
    sget-object v10, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v7}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v7

    aget v7, v10, v7

    packed-switch v7, :pswitch_data_1

    .line 4815
    :cond_0
    :goto_3
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    goto :goto_2

    .line 4794
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_3

    .line 4798
    :pswitch_5
    const-string/jumbo v7, "name"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4799
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 4800
    :cond_1
    const-string/jumbo v7, "query"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4801
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 4802
    :cond_2
    const-string/jumbo v7, "seed_hashtag"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4803
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 4804
    :cond_3
    const-string/jumbo v7, "id"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 4805
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 4806
    :cond_4
    const-string/jumbo v7, "event_status"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4807
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_5
    move-object v8, v2

    move-object/from16 v22, v3

    move-object v7, v4

    move-object v2, v9

    .line 4817
    goto/16 :goto_1

    .line 4818
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    move-object/from16 v24, v6

    move-object v6, v5

    move-object/from16 v5, v24

    .line 4820
    goto/16 :goto_1

    .line 4828
    :cond_7
    if-eqz v2, :cond_8

    .line 4829
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/model/topic/TwitterTopic;->c(Ljava/lang/String;)I

    move-result v2

    .line 4830
    new-instance v3, Lcom/twitter/model/topic/TwitterTopic;

    new-instance v4, Lcom/twitter/model/topic/l;

    const/4 v9, 0x0

    invoke-direct {v4, v2, v6, v9}, Lcom/twitter/model/topic/l;-><init>(ILjava/lang/String;Z)V

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x1

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v3 .. v23}, Lcom/twitter/model/topic/TwitterTopic;-><init>(Lcom/twitter/model/topic/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLcss;Ljava/util/ArrayList;Lcom/twitter/model/topic/d;Lcom/twitter/model/core/TwitterUser;Ljava/lang/String;Ljava/lang/String;)V

    .line 4833
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/twitter/model/timeline/cl;->a(Lcom/twitter/model/topic/TwitterTopic;)Lcom/twitter/model/timeline/cl;

    .line 4835
    :cond_8
    return-object p1

    .line 4779
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 4791
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static a(Lcom/fasterxml/jackson/core/JsonParser;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/twitter/model/timeline/av;)Lcom/twitter/model/timeline/az;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/cs;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;",
            "Lcom/twitter/model/timeline/av;",
            ")",
            "Lcom/twitter/model/timeline/az;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5478
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5479
    const/4 v1, 0x0

    .line 5480
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 5481
    :goto_0
    if-eqz v0, :cond_4

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v3, :cond_4

    .line 5482
    sget-object v3, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move-object v0, v1

    .line 5510
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    .line 5484
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v0

    .line 5485
    const-string/jumbo v3, "context"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5486
    invoke-static {p0, p2}, Lcom/twitter/library/api/at;->b(Lcom/fasterxml/jackson/core/JsonParser;Ljava/util/HashMap;)Lcom/twitter/model/timeline/e;

    move-result-object v0

    goto :goto_1

    .line 5488
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    move-object v0, v1

    .line 5490
    goto :goto_1

    .line 5493
    :pswitch_2
    const-string/jumbo v0, "ids"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5494
    invoke-static {p0}, Lcom/twitter/library/api/at;->az(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 5495
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5496
    invoke-static {v0, p1, p2}, Lcom/twitter/library/api/at;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/twitter/model/core/cs;

    move-result-object v0

    .line 5497
    if-eqz v0, :cond_1

    .line 5498
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move-object v0, v1

    .line 5501
    goto :goto_1

    .line 5502
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    move-object v0, v1

    .line 5504
    goto :goto_1

    .line 5512
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 5513
    new-instance v3, Lcom/twitter/model/timeline/c;

    .line 5514
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/twitter/model/core/cs;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/model/core/cs;

    invoke-direct {v3, v1, v0}, Lcom/twitter/model/timeline/c;-><init>(Lcom/twitter/model/timeline/e;[Lcom/twitter/model/core/cs;)V

    .line 5515
    invoke-virtual {p3, v3}, Lcom/twitter/model/timeline/av;->a(Lcom/twitter/model/timeline/c;)Lcom/twitter/model/timeline/av;

    move-result-object v0

    .line 5516
    invoke-virtual {v3}, Lcom/twitter/model/timeline/c;->a()Lcom/twitter/model/core/cs;

    move-result-object v1

    iget-wide v2, v1, Lcom/twitter/model/core/cs;->L:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/model/timeline/av;->b(J)Lcom/twitter/model/timeline/az;

    .line 5518
    :cond_5
    return-object p3

    .line 5482
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Lcom/fasterxml/jackson/core/JsonParser;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/twitter/model/timeline/bj;)Lcom/twitter/model/timeline/az;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/cs;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;",
            "Lcom/twitter/model/timeline/bj;",
            ")",
            "Lcom/twitter/model/timeline/az;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4914
    const-class v2, Lcom/twitter/model/json/timeline/JsonMediaGallery;

    invoke-static {p0, v2}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/json/timeline/JsonMediaGallery;

    .line 4916
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/twitter/model/json/timeline/JsonMediaGallery;->a:[Ljava/lang/String;

    if-nez v3, :cond_1

    .line 4974
    :cond_0
    :goto_0
    return-object p3

    .line 4922
    :cond_1
    iget-object v3, v2, Lcom/twitter/model/json/timeline/JsonMediaGallery;->a:[Ljava/lang/String;

    array-length v3, v3

    .line 4923
    invoke-static {v3}, Lcom/twitter/util/collection/r;->a(I)Lcom/twitter/util/collection/r;

    move-result-object v6

    .line 4924
    iget-object v3, v2, Lcom/twitter/model/json/timeline/JsonMediaGallery;->a:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v3}, Lcom/twitter/util/collection/r;->a(I)Lcom/twitter/util/collection/r;

    move-result-object v7

    .line 4925
    iget-object v8, v2, Lcom/twitter/model/json/timeline/JsonMediaGallery;->b:Lcom/twitter/model/json/timeline/JsonSuggestsInfo;

    .line 4926
    iget-object v9, v2, Lcom/twitter/model/json/timeline/JsonMediaGallery;->a:[Ljava/lang/String;

    array-length v10, v9

    const/4 v3, 0x0

    move v5, v3

    :goto_1
    if-ge v5, v10, :cond_5

    aget-object v11, v9, v5

    .line 4927
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v11, v0, v1}, Lcom/twitter/library/api/at;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/twitter/model/core/cs;

    move-result-object v12

    .line 4928
    if-eqz v12, :cond_4

    .line 4929
    new-instance v13, Lcom/twitter/model/timeline/cf;

    invoke-direct {v13}, Lcom/twitter/model/timeline/cf;-><init>()V

    .line 4930
    iget-object v3, v2, Lcom/twitter/model/json/timeline/JsonMediaGallery;->e:Lcom/twitter/model/json/timeline/JsonMediaGallery$JsonBanner;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/twitter/model/json/timeline/JsonMediaGallery;->e:Lcom/twitter/model/json/timeline/JsonMediaGallery$JsonBanner;

    iget-object v3, v3, Lcom/twitter/model/json/timeline/JsonMediaGallery$JsonBanner;->a:Ljava/util/Map;

    if-eqz v3, :cond_2

    .line 4931
    iget-object v3, v2, Lcom/twitter/model/json/timeline/JsonMediaGallery;->e:Lcom/twitter/model/json/timeline/JsonMediaGallery$JsonBanner;

    iget-object v3, v3, Lcom/twitter/model/json/timeline/JsonMediaGallery$JsonBanner;->a:Ljava/util/Map;

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/model/timeline/a;

    .line 4932
    if-eqz v3, :cond_2

    sget-object v4, Lcom/twitter/library/api/at;->b:Ljava/util/Map;

    iget-object v14, v3, Lcom/twitter/model/timeline/a;->a:Ljava/lang/String;

    invoke-interface {v4, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4935
    sget-object v4, Lcom/twitter/library/api/at;->b:Ljava/util/Map;

    iget-object v14, v3, Lcom/twitter/model/timeline/a;->a:Ljava/lang/String;

    invoke-interface {v4, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 4936
    new-instance v14, Lcom/twitter/model/core/cq;

    invoke-direct {v14}, Lcom/twitter/model/core/cq;-><init>()V

    .line 4939
    invoke-virtual {v14, v4}, Lcom/twitter/model/core/cq;->a(I)Lcom/twitter/model/core/cq;

    move-result-object v4

    iget-object v3, v3, Lcom/twitter/model/timeline/a;->b:Ljava/lang/String;

    .line 4940
    invoke-virtual {v4, v3}, Lcom/twitter/model/core/cq;->a(Ljava/lang/String;)Lcom/twitter/model/core/cq;

    move-result-object v3

    .line 4941
    invoke-virtual {v3}, Lcom/twitter/model/core/cq;->q()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/model/core/TwitterSocialProof;

    .line 4936
    invoke-virtual {v13, v3}, Lcom/twitter/model/timeline/cf;->a(Lcom/twitter/model/core/TwitterSocialProof;)Lcom/twitter/model/timeline/az;

    .line 4945
    :cond_2
    if-eqz v8, :cond_3

    .line 4946
    iget-object v3, v8, Lcom/twitter/model/json/timeline/JsonSuggestsInfo;->b:Ljava/util/Map;

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/model/timeline/al;

    .line 4947
    invoke-virtual {v13, v3}, Lcom/twitter/model/timeline/cf;->a(Lcom/twitter/model/timeline/al;)Lcom/twitter/model/timeline/az;

    .line 4949
    :cond_3
    invoke-virtual {v13, v12}, Lcom/twitter/model/timeline/cf;->a(Lcom/twitter/model/core/cs;)Lcom/twitter/model/timeline/cf;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 4950
    iget-wide v12, v12, Lcom/twitter/model/core/cs;->b:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 4926
    :cond_4
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_1

    .line 4953
    :cond_5
    invoke-virtual {v6}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 4954
    if-eqz v8, :cond_8

    iget-object v4, v8, Lcom/twitter/model/json/timeline/JsonSuggestsInfo;->a:Lcom/twitter/model/timeline/al;

    .line 4956
    :goto_2
    new-instance v5, Lcom/twitter/model/timeline/q;

    invoke-direct {v5}, Lcom/twitter/model/timeline/q;-><init>()V

    .line 4957
    invoke-virtual {v5, v4}, Lcom/twitter/model/timeline/q;->a(Lcom/twitter/model/timeline/al;)Lcom/twitter/model/timeline/q;

    move-result-object v5

    .line 4958
    invoke-virtual {v7}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v5, v4}, Lcom/twitter/model/timeline/q;->a(Ljava/util/List;)Lcom/twitter/model/timeline/q;

    move-result-object v4

    .line 4959
    iget-object v5, v2, Lcom/twitter/model/json/timeline/JsonMediaGallery;->c:Lcom/twitter/model/json/timeline/JsonStrings;

    .line 4960
    if-eqz v5, :cond_6

    .line 4961
    iget-object v5, v5, Lcom/twitter/model/json/timeline/JsonStrings;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/twitter/model/timeline/q;->a(Ljava/lang/String;)Lcom/twitter/model/timeline/q;

    .line 4963
    :cond_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/twitter/model/timeline/bj;->a(Ljava/util/List;)Lcom/twitter/model/timeline/bj;

    .line 4964
    invoke-virtual {v4}, Lcom/twitter/model/timeline/q;->q()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/model/timeline/o;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/twitter/model/timeline/bj;->a(Lcom/twitter/model/timeline/o;)Lcom/twitter/model/timeline/bj;

    .line 4965
    iget-object v3, v2, Lcom/twitter/model/json/timeline/JsonMediaGallery;->f:Lcom/twitter/model/timeline/t;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/twitter/model/timeline/bj;->a(Lcom/twitter/model/timeline/t;)Lcom/twitter/model/timeline/bj;

    .line 4966
    iget-object v2, v2, Lcom/twitter/model/json/timeline/JsonMediaGallery;->d:Lcom/twitter/model/timeline/l;

    .line 4967
    if-eqz v2, :cond_7

    .line 4968
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/twitter/model/timeline/bj;->a(Lcom/twitter/model/timeline/l;)Lcom/twitter/model/timeline/az;

    .line 4972
    :cond_7
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/twitter/model/timeline/bj;->b(I)Lcom/twitter/model/timeline/az;

    goto/16 :goto_0

    .line 4954
    :cond_8
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private static a(Lcom/fasterxml/jackson/core/JsonParser;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/twitter/model/timeline/cc;)Lcom/twitter/model/timeline/az;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/cs;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;",
            "Lcom/twitter/model/timeline/cc;",
            ")",
            "Lcom/twitter/model/timeline/az;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4845
    const-class v2, Lcom/twitter/model/json/timeline/JsonRecap;

    invoke-static {p0, v2}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/json/timeline/JsonRecap;

    .line 4847
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/twitter/model/json/timeline/JsonRecap;->a:[Ljava/lang/String;

    if-nez v3, :cond_1

    .line 4904
    :cond_0
    :goto_0
    return-object p3

    .line 4853
    :cond_1
    iget-object v3, v2, Lcom/twitter/model/json/timeline/JsonRecap;->a:[Ljava/lang/String;

    array-length v3, v3

    .line 4854
    invoke-static {v3}, Lcom/twitter/util/collection/r;->a(I)Lcom/twitter/util/collection/r;

    move-result-object v6

    .line 4855
    iget-object v3, v2, Lcom/twitter/model/json/timeline/JsonRecap;->a:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v3}, Lcom/twitter/util/collection/r;->a(I)Lcom/twitter/util/collection/r;

    move-result-object v7

    .line 4856
    iget-object v8, v2, Lcom/twitter/model/json/timeline/JsonRecap;->b:Lcom/twitter/model/json/timeline/JsonSuggestsInfo;

    .line 4857
    iget-object v9, v2, Lcom/twitter/model/json/timeline/JsonRecap;->a:[Ljava/lang/String;

    array-length v10, v9

    const/4 v3, 0x0

    move v5, v3

    :goto_1
    if-ge v5, v10, :cond_5

    aget-object v11, v9, v5

    .line 4858
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v11, v0, v1}, Lcom/twitter/library/api/at;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/twitter/model/core/cs;

    move-result-object v12

    .line 4859
    if-eqz v12, :cond_4

    .line 4860
    new-instance v13, Lcom/twitter/model/timeline/cf;

    invoke-direct {v13}, Lcom/twitter/model/timeline/cf;-><init>()V

    .line 4861
    iget-object v3, v2, Lcom/twitter/model/json/timeline/JsonRecap;->e:Lcom/twitter/model/json/timeline/JsonRecap$JsonBanner;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/twitter/model/json/timeline/JsonRecap;->e:Lcom/twitter/model/json/timeline/JsonRecap$JsonBanner;

    iget-object v3, v3, Lcom/twitter/model/json/timeline/JsonRecap$JsonBanner;->a:Ljava/util/Map;

    if-eqz v3, :cond_2

    .line 4862
    iget-object v3, v2, Lcom/twitter/model/json/timeline/JsonRecap;->e:Lcom/twitter/model/json/timeline/JsonRecap$JsonBanner;

    iget-object v3, v3, Lcom/twitter/model/json/timeline/JsonRecap$JsonBanner;->a:Ljava/util/Map;

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/model/timeline/a;

    .line 4863
    if-eqz v3, :cond_2

    sget-object v4, Lcom/twitter/library/api/at;->b:Ljava/util/Map;

    iget-object v14, v3, Lcom/twitter/model/timeline/a;->a:Ljava/lang/String;

    invoke-interface {v4, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4866
    sget-object v4, Lcom/twitter/library/api/at;->b:Ljava/util/Map;

    iget-object v14, v3, Lcom/twitter/model/timeline/a;->a:Ljava/lang/String;

    invoke-interface {v4, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 4867
    new-instance v14, Lcom/twitter/model/core/cq;

    invoke-direct {v14}, Lcom/twitter/model/core/cq;-><init>()V

    .line 4870
    invoke-virtual {v14, v4}, Lcom/twitter/model/core/cq;->a(I)Lcom/twitter/model/core/cq;

    move-result-object v4

    iget-object v3, v3, Lcom/twitter/model/timeline/a;->b:Ljava/lang/String;

    .line 4871
    invoke-virtual {v4, v3}, Lcom/twitter/model/core/cq;->a(Ljava/lang/String;)Lcom/twitter/model/core/cq;

    move-result-object v3

    .line 4872
    invoke-virtual {v3}, Lcom/twitter/model/core/cq;->q()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/model/core/TwitterSocialProof;

    .line 4867
    invoke-virtual {v13, v3}, Lcom/twitter/model/timeline/cf;->a(Lcom/twitter/model/core/TwitterSocialProof;)Lcom/twitter/model/timeline/az;

    .line 4876
    :cond_2
    if-eqz v8, :cond_3

    .line 4877
    iget-object v3, v8, Lcom/twitter/model/json/timeline/JsonSuggestsInfo;->b:Ljava/util/Map;

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/model/timeline/al;

    .line 4878
    invoke-virtual {v13, v3}, Lcom/twitter/model/timeline/cf;->a(Lcom/twitter/model/timeline/al;)Lcom/twitter/model/timeline/az;

    .line 4880
    :cond_3
    invoke-virtual {v13, v12}, Lcom/twitter/model/timeline/cf;->a(Lcom/twitter/model/core/cs;)Lcom/twitter/model/timeline/cf;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 4881
    iget-wide v12, v12, Lcom/twitter/model/core/cs;->b:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 4857
    :cond_4
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_1

    .line 4884
    :cond_5
    invoke-virtual {v6}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 4885
    if-eqz v8, :cond_8

    iget-object v4, v8, Lcom/twitter/model/json/timeline/JsonSuggestsInfo;->a:Lcom/twitter/model/timeline/al;

    .line 4886
    :goto_2
    new-instance v5, Lcom/twitter/model/timeline/ac;

    invoke-direct {v5}, Lcom/twitter/model/timeline/ac;-><init>()V

    .line 4887
    invoke-virtual {v5, v4}, Lcom/twitter/model/timeline/ac;->a(Lcom/twitter/model/timeline/al;)Lcom/twitter/model/timeline/ac;

    move-result-object v5

    .line 4888
    invoke-virtual {v7}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v5, v4}, Lcom/twitter/model/timeline/ac;->a(Ljava/util/List;)Lcom/twitter/model/timeline/ac;

    move-result-object v4

    .line 4889
    iget-object v5, v2, Lcom/twitter/model/json/timeline/JsonRecap;->c:Lcom/twitter/model/json/timeline/JsonStrings;

    .line 4890
    if-eqz v5, :cond_6

    .line 4891
    iget-object v5, v5, Lcom/twitter/model/json/timeline/JsonStrings;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/twitter/model/timeline/ac;->a(Ljava/lang/String;)Lcom/twitter/model/timeline/ac;

    .line 4893
    :cond_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/twitter/model/timeline/cc;->a(Ljava/util/List;)Lcom/twitter/model/timeline/cc;

    .line 4894
    invoke-virtual {v4}, Lcom/twitter/model/timeline/ac;->q()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/model/timeline/aa;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/twitter/model/timeline/cc;->a(Lcom/twitter/model/timeline/aa;)Lcom/twitter/model/timeline/cc;

    .line 4895
    iget-object v3, v2, Lcom/twitter/model/json/timeline/JsonRecap;->f:Lcom/twitter/model/timeline/t;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/twitter/model/timeline/cc;->a(Lcom/twitter/model/timeline/t;)Lcom/twitter/model/timeline/cc;

    .line 4896
    iget-object v2, v2, Lcom/twitter/model/json/timeline/JsonRecap;->d:Lcom/twitter/model/timeline/l;

    .line 4897
    if-eqz v2, :cond_7

    .line 4898
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/twitter/model/timeline/cc;->a(Lcom/twitter/model/timeline/l;)Lcom/twitter/model/timeline/az;

    .line 4902
    :cond_7
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/twitter/model/timeline/cc;->b(I)Lcom/twitter/model/timeline/az;

    goto/16 :goto_0

    .line 4885
    :cond_8
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private static a(Lcom/fasterxml/jackson/core/JsonParser;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/twitter/model/timeline/cf;)Lcom/twitter/model/timeline/az;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/cs;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;",
            "Lcom/twitter/model/timeline/cf;",
            ")",
            "Lcom/twitter/model/timeline/az;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 5126
    .line 5128
    const/4 v2, 0x0

    .line 5129
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v4, v0

    move v0, v2

    move-object v2, v3

    .line 5130
    :goto_0
    if-eqz v4, :cond_2

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v4, v5, :cond_2

    .line 5131
    sget-object v5, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    .line 5156
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    goto :goto_0

    .line 5133
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v4

    .line 5134
    const-string/jumbo v5, "id"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5135
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/twitter/library/api/at;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/twitter/model/core/cs;

    move-result-object v3

    goto :goto_1

    .line 5136
    :cond_1
    const-string/jumbo v5, "sort_index"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5137
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 5142
    :pswitch_2
    const-string/jumbo v4, "is_suggestion"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    .line 5143
    goto :goto_1

    .line 5149
    :pswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 5159
    :cond_2
    if-eqz v3, :cond_4

    .line 5160
    invoke-virtual {p3, v3}, Lcom/twitter/model/timeline/cf;->a(Lcom/twitter/model/core/cs;)Lcom/twitter/model/timeline/cf;

    move-result-object v4

    iget-wide v6, v3, Lcom/twitter/model/core/cs;->L:J

    .line 5161
    invoke-virtual {v4, v6, v7}, Lcom/twitter/model/timeline/cf;->b(J)Lcom/twitter/model/timeline/az;

    .line 5162
    if-eqz v2, :cond_3

    .line 5163
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Lcom/twitter/model/timeline/cf;->a(J)Lcom/twitter/model/timeline/az;

    .line 5165
    :cond_3
    if-eqz v0, :cond_4

    .line 5166
    invoke-virtual {p3, v1}, Lcom/twitter/model/timeline/cf;->a(I)Lcom/twitter/model/timeline/az;

    .line 5169
    :cond_4
    return-object p3

    .line 5131
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Lcom/fasterxml/jackson/core/JsonParser;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/twitter/model/timeline/co;)Lcom/twitter/model/timeline/az;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/cs;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;",
            "Lcom/twitter/model/timeline/co;",
            ")",
            "Lcom/twitter/model/timeline/az;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5110
    const-class v0, Lcom/twitter/model/json/timeline/JsonTweetCarousel;

    invoke-static {p0, v0}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/json/timeline/JsonTweetCarousel;

    .line 5111
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v2

    .line 5112
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/twitter/model/json/timeline/JsonTweetCarousel;->b:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 5113
    iget-object v1, v0, Lcom/twitter/model/json/timeline/JsonTweetCarousel;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5114
    invoke-static {v1, p1, p2}, Lcom/twitter/library/api/at;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/twitter/model/core/cs;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_0

    .line 5116
    :cond_0
    new-instance v1, Lcom/twitter/model/timeline/b;

    iget-object v3, v0, Lcom/twitter/model/json/timeline/JsonTweetCarousel;->a:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v1, v3, v0}, Lcom/twitter/model/timeline/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p3, v1}, Lcom/twitter/model/timeline/co;->a(Lcom/twitter/model/timeline/b;)Lcom/twitter/model/timeline/co;

    .line 5119
    :cond_1
    return-object p3
.end method

.method private static a(Lcom/fasterxml/jackson/core/JsonParser;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/twitter/model/timeline/cw;)Lcom/twitter/model/timeline/az;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/cs;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;",
            "Lcom/twitter/model/timeline/cw;",
            ")",
            "Lcom/twitter/model/timeline/az;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4981
    const-class v2, Lcom/twitter/model/json/timeline/wtf/JsonWhoToFollow;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/json/timeline/wtf/JsonWhoToFollow;

    .line 4982
    if-nez v2, :cond_1

    .line 5045
    :cond_0
    :goto_0
    return-object p3

    .line 4985
    :cond_1
    iget-object v3, v2, Lcom/twitter/model/json/timeline/wtf/JsonWhoToFollow;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/twitter/library/api/at;->c(Ljava/lang/String;)I

    move-result v8

    .line 4986
    iget-object v4, v2, Lcom/twitter/model/json/timeline/wtf/JsonWhoToFollow;->f:Lcom/twitter/model/json/timeline/JsonSuggestsInfo;

    .line 4988
    const/4 v3, -0x1

    if-eq v8, v3, :cond_0

    .line 4989
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v9

    .line 4990
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v10

    .line 4991
    invoke-static {}, Lcom/twitter/util/collection/v;->e()Lcom/twitter/util/collection/v;

    move-result-object v11

    .line 4992
    iget-object v3, v2, Lcom/twitter/model/json/timeline/wtf/JsonWhoToFollow;->d:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    .line 4993
    iget-object v3, v2, Lcom/twitter/model/json/timeline/wtf/JsonWhoToFollow;->b:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    .line 4994
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v13

    .line 4995
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v14

    .line 4998
    if-eqz v4, :cond_2

    iget-object v3, v4, Lcom/twitter/model/json/timeline/JsonSuggestsInfo;->a:Lcom/twitter/model/timeline/al;

    move-object v7, v3

    .line 4999
    :goto_1
    if-eqz v4, :cond_3

    iget-object v3, v4, Lcom/twitter/model/json/timeline/JsonSuggestsInfo;->c:Ljava/util/Map;

    .line 5000
    invoke-static {v3}, Lcom/twitter/util/collection/v;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    move-object v5, v3

    .line 5003
    :goto_2
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5004
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/twitter/model/json/timeline/wtf/JsonSocialProof;

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/twitter/library/api/at;->a(Lcom/twitter/model/json/timeline/wtf/JsonSocialProof;Ljava/util/Map;)Lcom/twitter/model/core/TwitterSocialProof;

    move-result-object v4

    .line 5005
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v11, v3, v4}, Lcom/twitter/util/collection/v;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/v;

    goto :goto_3

    .line 4998
    :cond_2
    const/4 v3, 0x0

    move-object v7, v3

    goto :goto_1

    .line 5000
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    move-object v5, v3

    goto :goto_2

    .line 5009
    :cond_4
    iget-object v15, v2, Lcom/twitter/model/json/timeline/wtf/JsonWhoToFollow;->a:[Ljava/lang/String;

    array-length v0, v15

    move/from16 v16, v0

    const/4 v3, 0x0

    move v6, v3

    :goto_4
    move/from16 v0, v16

    if-ge v6, v0, :cond_5

    aget-object v3, v15, v6

    .line 5010
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/model/core/TwitterUser;

    .line 5011
    invoke-virtual {v3}, Lcom/twitter/model/core/TwitterUser;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/twitter/model/timeline/al;

    iput-object v4, v3, Lcom/twitter/model/core/TwitterUser;->U:Lcom/twitter/model/timeline/al;

    .line 5012
    invoke-virtual {v9, v3}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 5013
    iget-wide v0, v3, Lcom/twitter/model/core/TwitterUser;->c:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 5009
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_4

    .line 5017
    :cond_5
    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5018
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v3, v0, v1}, Lcom/twitter/library/api/at;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/twitter/model/core/cs;

    move-result-object v3

    .line 5019
    invoke-virtual {v10, v3}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 5020
    invoke-virtual {v3}, Lcom/twitter/model/core/cs;->a()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_5

    .line 5023
    :cond_6
    new-instance v3, Lcom/twitter/model/timeline/di;

    invoke-direct {v3}, Lcom/twitter/model/timeline/di;-><init>()V

    .line 5024
    invoke-virtual {v3, v8}, Lcom/twitter/model/timeline/di;->a(I)Lcom/twitter/model/timeline/di;

    move-result-object v4

    .line 5025
    invoke-virtual {v11}, Lcom/twitter/util/collection/v;->q()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-virtual {v4, v3}, Lcom/twitter/model/timeline/di;->a(Ljava/util/Map;)Lcom/twitter/model/timeline/di;

    move-result-object v3

    .line 5026
    invoke-virtual {v3, v7}, Lcom/twitter/model/timeline/di;->a(Lcom/twitter/model/timeline/al;)Lcom/twitter/model/timeline/di;

    move-result-object v3

    .line 5027
    invoke-virtual {v3, v5}, Lcom/twitter/model/timeline/di;->b(Ljava/util/Map;)Lcom/twitter/model/timeline/di;

    move-result-object v5

    .line 5028
    invoke-virtual {v14}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v13}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v5, v3, v4}, Lcom/twitter/model/timeline/di;->a(Ljava/util/List;Ljava/util/List;)Lcom/twitter/model/timeline/di;

    move-result-object v5

    .line 5030
    iget-object v3, v2, Lcom/twitter/model/json/timeline/wtf/JsonWhoToFollow;->e:Lcom/twitter/model/json/timeline/JsonStrings;

    .line 5031
    if-eqz v3, :cond_7

    .line 5032
    iget-object v4, v3, Lcom/twitter/model/json/timeline/JsonStrings;->a:Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/twitter/model/timeline/di;->a(Ljava/lang/String;)Lcom/twitter/model/timeline/di;

    move-result-object v4

    iget-object v3, v3, Lcom/twitter/model/json/timeline/JsonStrings;->b:Ljava/lang/String;

    .line 5033
    invoke-virtual {v4, v3}, Lcom/twitter/model/timeline/di;->b(Ljava/lang/String;)Lcom/twitter/model/timeline/di;

    .line 5036
    :cond_7
    new-instance v6, Lcom/twitter/model/timeline/df;

    invoke-virtual {v9}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v10}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v5}, Lcom/twitter/model/timeline/di;->q()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/twitter/model/timeline/dh;

    invoke-direct {v6, v3, v4, v5}, Lcom/twitter/model/timeline/df;-><init>(Ljava/util/List;Ljava/util/List;Lcom/twitter/model/timeline/dh;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Lcom/twitter/model/timeline/cw;->a(Lcom/twitter/model/timeline/df;)Lcom/twitter/model/timeline/cw;

    .line 5038
    iget-object v3, v2, Lcom/twitter/model/json/timeline/wtf/JsonWhoToFollow;->g:Lcom/twitter/model/timeline/l;

    .line 5039
    if-eqz v3, :cond_8

    .line 5040
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/twitter/model/timeline/cw;->a(Lcom/twitter/model/timeline/l;)Lcom/twitter/model/timeline/az;

    .line 5043
    :cond_8
    iget-object v2, v2, Lcom/twitter/model/json/timeline/wtf/JsonWhoToFollow;->h:Lcom/twitter/model/timeline/t;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/twitter/model/timeline/cw;->a(Lcom/twitter/model/timeline/t;)Lcom/twitter/model/timeline/cw;

    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1269
    if-eqz p0, :cond_0

    const-string/jumbo v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1276
    :cond_0
    :goto_0
    return-object v0

    .line 1272
    :cond_1
    const-string/jumbo v1, "[^a-zA-Z0-9_]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1273
    if-eqz v1, :cond_0

    array-length v2, v1

    if-eqz v2, :cond_0

    .line 1276
    const/4 v0, 0x1

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public static a(Lcom/fasterxml/jackson/core/JsonParser;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/cs;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/twitter/model/core/cs;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 340
    if-eqz p0, :cond_1

    .line 341
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 342
    :goto_0
    if-eqz v0, :cond_1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v2, :cond_1

    .line 343
    sget-object v2, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 361
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 346
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    .line 345
    invoke-static {v0, p1, p2}, Lcom/twitter/library/api/at;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/twitter/model/core/cs;

    move-result-object v0

    .line 347
    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 354
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 364
    :cond_1
    return-object v1

    .line 343
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/cs;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/topic/TwitterTopic;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4353
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4354
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 4355
    :goto_0
    if-eqz v0, :cond_2

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v2, :cond_2

    .line 4356
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_1

    .line 4357
    invoke-static {p2, p0, p1}, Lcom/twitter/library/api/at;->b(Lcom/fasterxml/jackson/core/JsonParser;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/twitter/model/topic/TwitterTopic;

    move-result-object v0

    .line 4358
    if-eqz v0, :cond_0

    .line 4359
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4364
    :cond_0
    :goto_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 4361
    :cond_1
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_0

    .line 4362
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 4366
    :cond_2
    return-object v1
.end method

.method private static a(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/core/JsonToken;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/card/property/ImageSpec;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 3964
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3966
    :goto_0
    if-eqz p1, :cond_7

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq p1, v0, :cond_7

    .line 3967
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 3968
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_8

    .line 3969
    new-instance v9, Lcom/twitter/model/card/property/ImageSpec;

    invoke-direct {v9}, Lcom/twitter/model/card/property/ImageSpec;-><init>()V

    move v2, v6

    move v3, v6

    move v4, v6

    move v5, v6

    move-object v7, v0

    move v0, v6

    .line 3975
    :goto_1
    if-eqz v7, :cond_5

    sget-object v10, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v7, v10, :cond_5

    .line 3976
    sget-object v10, Lcom/fasterxml/jackson/core/JsonToken;->h:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v7, v10, :cond_2

    .line 3977
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v7

    .line 3978
    const-string/jumbo v10, "url"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3979
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/twitter/model/card/property/ImageSpec;->c:Ljava/lang/String;

    move v0, v1

    .line 3999
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    goto :goto_1

    .line 3982
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_2

    .line 3984
    :cond_2
    sget-object v10, Lcom/fasterxml/jackson/core/JsonToken;->i:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v7, v10, :cond_0

    .line 3985
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v7

    .line 3986
    const-string/jumbo v10, "width"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 3987
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->i()I

    move-result v5

    move v3, v1

    .line 3994
    :cond_3
    :goto_3
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 3995
    new-instance v7, Lcom/twitter/model/card/property/Vector2F;

    int-to-float v10, v5

    invoke-static {}, Lcom/twitter/util/ak;->b()F

    move-result v11

    mul-float/2addr v10, v11

    int-to-float v11, v4

    .line 3996
    invoke-static {}, Lcom/twitter/util/ak;->b()F

    move-result v12

    mul-float/2addr v11, v12

    invoke-direct {v7, v10, v11}, Lcom/twitter/model/card/property/Vector2F;-><init>(FF)V

    iput-object v7, v9, Lcom/twitter/model/card/property/ImageSpec;->d:Lcom/twitter/model/card/property/Vector2F;

    goto :goto_2

    .line 3989
    :cond_4
    const-string/jumbo v10, "height"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3990
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->i()I

    move-result v4

    move v2, v1

    .line 3991
    goto :goto_3

    .line 4001
    :cond_5
    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    .line 4002
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    move-object p1, v7

    .line 4004
    goto/16 :goto_0

    .line 4006
    :cond_7
    return-object v8

    :cond_8
    move-object p1, v0

    goto/16 :goto_0
.end method

.method private static a(Lcom/fasterxml/jackson/core/JsonParser;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/Map;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/cs;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/topic/TwitterTopic;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/moments/ad;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/timeline/ay;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4401
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    if-eqz p3, :cond_1

    .line 4402
    invoke-virtual {p3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4403
    :cond_1
    new-instance v0, Lcom/twitter/model/json/common/InvalidJsonFormatException;

    const-string/jumbo v1, "Missing tweets map or users map"

    invoke-direct {v0, v1}, Lcom/twitter/model/json/common/InvalidJsonFormatException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 4404
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    .line 4437
    :goto_0
    return-object v0

    .line 4406
    :cond_2
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v4

    .line 4407
    const/4 v1, 0x0

    .line 4408
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 4409
    :goto_1
    if-eqz v0, :cond_c

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v2, :cond_c

    .line 4410
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_b

    .line 4411
    invoke-static/range {p0 .. p5}, Lcom/twitter/library/api/at;->b(Lcom/fasterxml/jackson/core/JsonParser;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/Map;Z)Lcom/twitter/model/timeline/ay;

    move-result-object v0

    .line 4413
    if-eqz v0, :cond_d

    .line 4414
    instance-of v2, v0, Lcom/twitter/model/timeline/ca;

    if-nez v2, :cond_3

    instance-of v2, v0, Lcom/twitter/model/timeline/cm;

    if-nez v2, :cond_3

    instance-of v2, v0, Lcom/twitter/model/timeline/bh;

    if-eqz v2, :cond_7

    .line 4420
    :cond_3
    if-eqz v1, :cond_6

    iget-wide v2, v1, Lcom/twitter/model/timeline/ay;->m:J

    .line 4421
    :goto_2
    iput-wide v2, v0, Lcom/twitter/model/timeline/ay;->m:J

    .line 4429
    :cond_4
    :goto_3
    invoke-virtual {v4, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    :goto_4
    move-object v1, v0

    .line 4435
    :cond_5
    :goto_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 4421
    :cond_6
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    goto :goto_2

    .line 4422
    :cond_7
    if-eqz v1, :cond_9

    invoke-static {v0}, Lcom/twitter/model/timeline/ay;->e(Lcom/twitter/model/timeline/ay;)Lcss;

    move-result-object v2

    if-nez v2, :cond_8

    instance-of v2, v0, Lcom/twitter/model/timeline/aq;

    if-eqz v2, :cond_9

    .line 4424
    :cond_8
    iget-wide v2, v1, Lcom/twitter/model/timeline/ay;->m:J

    iput-wide v2, v0, Lcom/twitter/model/timeline/ay;->m:J

    goto :goto_3

    .line 4425
    :cond_9
    iget v2, v0, Lcom/twitter/model/timeline/ay;->d:I

    if-eqz v2, :cond_4

    .line 4426
    if-eqz v1, :cond_a

    iget-wide v2, v1, Lcom/twitter/model/timeline/ay;->m:J

    :goto_6
    iput-wide v2, v0, Lcom/twitter/model/timeline/ay;->m:J

    goto :goto_3

    :cond_a
    const-wide/16 v2, -0x1

    goto :goto_6

    .line 4432
    :cond_b
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_5

    .line 4433
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_5

    .line 4437
    :cond_c
    invoke-virtual {v4}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_d
    move-object v0, v1

    goto :goto_4
.end method

.method private static a(Lcom/twitter/model/core/cs;)Z
    .locals 1

    .prologue
    .line 2085
    iget-object v0, p0, Lcom/twitter/model/core/cs;->e:Lcom/twitter/model/core/bm;

    iget-object v0, v0, Lcom/twitter/model/core/bm;->d:Lcom/twitter/model/core/ac;

    invoke-virtual {v0}, Lcom/twitter/model/core/ac;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/twitter/model/core/cs;Ljava/util/HashMap;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/core/cs;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5523
    iget-object v1, p0, Lcom/twitter/model/core/cs;->H:Lcom/twitter/model/core/cs;

    .line 5524
    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/twitter/model/core/cs;->E:Lcom/twitter/model/core/TwitterUser;

    if-eqz v0, :cond_0

    .line 5525
    iget-object v0, v1, Lcom/twitter/model/core/cs;->E:Lcom/twitter/model/core/TwitterUser;

    iget-wide v2, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    .line 5526
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    .line 5527
    if-eqz v0, :cond_1

    .line 5528
    iput-object v0, v1, Lcom/twitter/model/core/cs;->E:Lcom/twitter/model/core/TwitterUser;

    .line 5534
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 5530
    :cond_1
    new-instance v0, Lcom/twitter/model/json/common/InvalidJsonFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Missing user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/twitter/model/core/cs;->E:Lcom/twitter/model/core/TwitterUser;

    iget-wide v4, v1, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/model/json/common/InvalidJsonFormatException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 5531
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static aA(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/library/api/q;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 5838
    .line 5841
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v3, v0

    move-object v2, v1

    move-object v0, v1

    .line 5842
    :goto_0
    if-eqz v3, :cond_3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v3, v4, :cond_3

    .line 5843
    sget-object v4, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    .line 5864
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto :goto_0

    .line 5845
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v3

    .line 5846
    const-string/jumbo v4, "id"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5847
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 5848
    :cond_1
    const-string/jumbo v4, "url"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5849
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 5850
    :cond_2
    const-string/jumbo v4, "name"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5851
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 5857
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 5867
    :cond_3
    new-instance v3, Lcom/twitter/library/api/q;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v3, v2, v1, v0}, Lcom/twitter/library/api/q;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    return-object v3

    .line 5843
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static aB(Lcom/fasterxml/jackson/core/JsonParser;)Lcfm;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6077
    new-instance v1, Lcfm;

    invoke-direct {v1}, Lcfm;-><init>()V

    .line 6079
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 6080
    :goto_0
    if-eqz v0, :cond_8

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v2, :cond_8

    .line 6081
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    .line 6082
    sget-object v3, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    .line 6116
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    .line 6120
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 6084
    :pswitch_1
    const-string/jumbo v0, "id"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6085
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcfm;->a:Ljava/lang/String;

    goto :goto_1

    .line 6086
    :cond_1
    const-string/jumbo v0, "title"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6087
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcfm;->b:Ljava/lang/String;

    goto :goto_1

    .line 6088
    :cond_2
    const-string/jumbo v0, "image_url"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6089
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcfm;->c:Ljava/lang/String;

    goto :goto_1

    .line 6090
    :cond_3
    const-string/jumbo v0, "author_name"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6091
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcfm;->d:Ljava/lang/String;

    goto :goto_1

    .line 6092
    :cond_4
    const-string/jumbo v0, "article_description"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6093
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcfm;->e:Ljava/lang/String;

    goto :goto_1

    .line 6094
    :cond_5
    const-string/jumbo v0, "article_url"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6095
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcfm;->f:Ljava/lang/String;

    goto :goto_1

    .line 6096
    :cond_6
    const-string/jumbo v0, "start_time"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6097
    sget-object v0, Lcom/twitter/util/al;->b:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/twitter/util/al;->a(Ljava/text/SimpleDateFormat;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcfm;->g:J

    goto :goto_1

    .line 6102
    :pswitch_2
    const-string/jumbo v0, "tweet_count"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6103
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->i()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, v1, Lcfm;->h:J

    goto/16 :goto_1

    .line 6108
    :pswitch_3
    const-string/jumbo v0, "author_account"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6109
    const-class v0, Lcom/twitter/model/core/TwitterUser;

    invoke-static {p0, v0}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    iput-object v0, v1, Lcfm;->j:Lcom/twitter/model/core/TwitterUser;

    goto/16 :goto_1

    .line 6111
    :cond_7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_1

    .line 6123
    :cond_8
    return-object v1

    .line 6082
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static aa(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcfm;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6038
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6040
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 6041
    :goto_0
    if-eqz v0, :cond_2

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v2, :cond_2

    .line 6042
    sget-object v2, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 6065
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    .line 6070
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 6044
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v0

    .line 6045
    const-string/jumbo v2, "news_events"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6046
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 6047
    :goto_2
    if-eqz v0, :cond_0

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v2, :cond_0

    .line 6048
    sget-object v2, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_1

    .line 6054
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    .line 6057
    :goto_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2

    .line 6050
    :pswitch_1
    invoke-static {p0}, Lcom/twitter/library/api/at;->aB(Lcom/fasterxml/jackson/core/JsonParser;)Lcfm;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 6060
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 6073
    :cond_2
    return-object v1

    .line 6042
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 6048
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_1
    .end packed-switch
.end method

.method public static ab(Lcom/fasterxml/jackson/core/JsonParser;)Lcfm;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 6127
    .line 6130
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v3, v0

    move-object v1, v2

    move-object v0, v2

    .line 6131
    :goto_0
    if-eqz v3, :cond_2

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v3, v4, :cond_2

    .line 6132
    sget-object v4, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    .line 6152
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    .line 6157
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto :goto_0

    .line 6134
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v3

    .line 6135
    const-string/jumbo v4, "news_event"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6136
    invoke-static {p0}, Lcom/twitter/library/api/at;->aB(Lcom/fasterxml/jackson/core/JsonParser;)Lcfm;

    move-result-object v1

    goto :goto_1

    .line 6138
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 6143
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v3

    .line 6144
    const-string/jumbo v4, "tweets"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6145
    const-class v0, Lcom/twitter/model/core/cs;

    invoke-static {p0, v0}, Lcom/twitter/model/json/common/g;->d(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 6147
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 6160
    :cond_2
    if-eqz v1, :cond_3

    .line 6161
    iput-object v0, v1, Lcfm;->i:Ljava/util/List;

    .line 6164
    :goto_2
    return-object v1

    :cond_3
    move-object v1, v2

    goto :goto_2

    .line 6132
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static ac(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/topic/a;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 466
    .line 472
    const-wide/16 v8, -0x1

    .line 473
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v6, v7

    move-object v5, v7

    move-object v4, v7

    move-object v3, v7

    move-object v2, v7

    .line 474
    :goto_0
    if-eqz v0, :cond_6

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_6

    .line 475
    sget-object v1, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v1, v0

    sparse-switch v0, :sswitch_data_0

    .line 501
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    .line 505
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 477
    :sswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v0

    .line 478
    const-string/jumbo v1, "location"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 479
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 480
    :cond_1
    const-string/jumbo v1, "name"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 481
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 482
    :cond_2
    const-string/jumbo v1, "score"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 483
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 484
    :cond_3
    const-string/jumbo v1, "logo_url"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 485
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 486
    :cond_4
    const-string/jumbo v1, "abbreviation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 487
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 488
    :cond_5
    const-string/jumbo v1, "player_type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 494
    :sswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v0

    .line 495
    const-string/jumbo v1, "user_id"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->p()J

    move-result-wide v8

    goto :goto_1

    .line 507
    :cond_6
    new-instance v1, Lcom/twitter/model/topic/a;

    invoke-direct/range {v1 .. v9}, Lcom/twitter/model/topic/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v1

    .line 475
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method private static ad(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/twitter/model/topic/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 513
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 514
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 515
    :goto_0
    if-eqz v0, :cond_1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v2, :cond_1

    .line 516
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_0

    .line 517
    invoke-static {p0}, Lcom/twitter/library/api/at;->ac(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/topic/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 519
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 523
    :cond_1
    return-object v1
.end method

.method private static ae(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/topic/g;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 527
    .line 535
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v6, v7

    move-object v8, v7

    move-object v5, v7

    move-object v4, v7

    move-object v3, v7

    move-object v2, v7

    move-object v1, v7

    .line 536
    :goto_0
    if-eqz v0, :cond_9

    sget-object v9, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v9, :cond_9

    .line 537
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v9

    .line 538
    sget-object v10, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v10, v0

    packed-switch v0, :pswitch_data_0

    .line 595
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    .line 599
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 540
    :pswitch_1
    const-string/jumbo v0, "sports_title"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 541
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 542
    :cond_1
    const-string/jumbo v0, "game_type"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 543
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 544
    :cond_2
    const-string/jumbo v0, "channel"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 545
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 546
    :cond_3
    const-string/jumbo v0, "tournament_hashtag"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 552
    :pswitch_2
    const-string/jumbo v0, "game_info"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 553
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 554
    :goto_2
    if-eqz v0, :cond_0

    sget-object v9, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v9, :cond_0

    .line 555
    sget-object v9, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v9, v0

    packed-switch v0, :pswitch_data_1

    .line 577
    :cond_4
    :goto_3
    :pswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2

    .line 557
    :pswitch_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v0

    .line 558
    const-string/jumbo v9, "summary"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 559
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 560
    :cond_5
    const-string/jumbo v9, "status"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 561
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 566
    :pswitch_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_3

    .line 570
    :pswitch_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_3

    .line 580
    :cond_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_1

    .line 585
    :pswitch_7
    const-string/jumbo v0, "players"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 586
    invoke-static {p0}, Lcom/twitter/library/api/at;->ad(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/ArrayList;

    move-result-object v6

    goto/16 :goto_1

    .line 587
    :cond_7
    const-string/jumbo v0, "secondary_players"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 588
    invoke-static {p0}, Lcom/twitter/library/api/at;->ad(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/ArrayList;

    move-result-object v7

    goto/16 :goto_1

    .line 590
    :cond_8
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_1

    .line 602
    :cond_9
    new-instance v0, Lcom/twitter/model/topic/g;

    invoke-direct/range {v0 .. v8}, Lcom/twitter/model/topic/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-object v0

    .line 538
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 555
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method private static af(Lcom/fasterxml/jackson/core/JsonParser;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 802
    const/4 v0, 0x0

    .line 803
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 804
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_2

    .line 805
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 806
    :goto_0
    if-eqz v1, :cond_2

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_2

    .line 807
    sget-object v2, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 826
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto :goto_0

    .line 810
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 814
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v1

    .line 815
    const-string/jumbo v2, "following"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 816
    or-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 817
    :cond_1
    const-string/jumbo v2, "followed_by"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 818
    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 829
    :cond_2
    return v0

    .line 807
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static ag(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/core/TwitterUser;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 833
    new-instance v2, Lcom/twitter/model/core/cv;

    invoke-direct {v2}, Lcom/twitter/model/core/cv;-><init>()V

    .line 834
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 835
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_3

    .line 836
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 837
    const/4 v0, 0x0

    .line 838
    :goto_0
    if-eqz v1, :cond_3

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v3, :cond_3

    .line 839
    sget-object v3, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 879
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto :goto_0

    .line 841
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 845
    :pswitch_2
    const-string/jumbo v1, "connections"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 846
    invoke-static {p0}, Lcom/twitter/library/api/at;->af(Lcom/fasterxml/jackson/core/JsonParser;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/twitter/model/core/cv;->i(I)Lcom/twitter/model/core/cv;

    goto :goto_1

    .line 848
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 854
    :pswitch_3
    const-string/jumbo v1, "id"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 855
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->j()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/twitter/model/core/cv;->a(J)Lcom/twitter/model/core/cv;

    goto :goto_1

    .line 861
    :pswitch_4
    const-string/jumbo v1, "name"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 862
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/twitter/model/core/cv;->b(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    .line 864
    :cond_2
    const-string/jumbo v1, "screen_name"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 865
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/twitter/model/core/cv;->g(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    goto :goto_1

    .line 871
    :pswitch_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 882
    :cond_3
    invoke-virtual {v2}, Lcom/twitter/model/core/cv;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    return-object v0

    .line 839
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static ah(Lcom/fasterxml/jackson/core/JsonParser;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 984
    const/4 v1, 0x0

    .line 985
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v3, v0

    move v0, v1

    move-object v1, v3

    .line 987
    :goto_0
    if-eqz v1, :cond_d

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_d

    .line 988
    sget-object v2, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 1030
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto :goto_0

    .line 990
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v1

    .line 991
    const-string/jumbo v2, "following"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 992
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twitter/model/core/p;->a(II)I

    move-result v0

    goto :goto_1

    .line 993
    :cond_1
    const-string/jumbo v2, "followed_by"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 994
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/twitter/model/core/p;->a(II)I

    move-result v0

    goto :goto_1

    .line 995
    :cond_2
    const-string/jumbo v2, "blocking"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 996
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/twitter/model/core/p;->a(II)I

    move-result v0

    goto :goto_1

    .line 997
    :cond_3
    const-string/jumbo v2, "can_dm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 998
    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/twitter/model/core/p;->a(II)I

    move-result v0

    goto :goto_1

    .line 999
    :cond_4
    const-string/jumbo v2, "notifications_enabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1000
    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/twitter/model/core/p;->a(II)I

    move-result v0

    goto :goto_1

    .line 1001
    :cond_5
    const-string/jumbo v2, "lifeline_following"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1002
    const/16 v1, 0x100

    invoke-static {v0, v1}, Lcom/twitter/model/core/p;->a(II)I

    move-result v0

    goto :goto_1

    .line 1003
    :cond_6
    const-string/jumbo v2, "email_following"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1004
    const/16 v1, 0x1000

    invoke-static {v0, v1}, Lcom/twitter/model/core/p;->a(II)I

    move-result v0

    goto :goto_1

    .line 1005
    :cond_7
    const-string/jumbo v2, "want_retweets"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1006
    const/16 v1, 0x200

    invoke-static {v0, v1}, Lcom/twitter/model/core/p;->a(II)I

    move-result v0

    goto/16 :goto_1

    .line 1007
    :cond_8
    const-string/jumbo v2, "can_media_tag"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1008
    const/16 v1, 0x400

    invoke-static {v0, v1}, Lcom/twitter/model/core/p;->a(II)I

    move-result v0

    goto/16 :goto_1

    .line 1009
    :cond_9
    const-string/jumbo v2, "muting"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1010
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lcom/twitter/model/core/p;->a(II)I

    move-result v0

    goto/16 :goto_1

    .line 1011
    :cond_a
    const-string/jumbo v2, "following_requested"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1012
    const/16 v1, 0x4000

    invoke-static {v0, v1}, Lcom/twitter/model/core/p;->a(II)I

    move-result v0

    goto/16 :goto_1

    .line 1013
    :cond_b
    const-string/jumbo v2, "blocked_by"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1014
    const v1, 0x8000

    invoke-static {v0, v1}, Lcom/twitter/model/core/p;->a(II)I

    move-result v0

    goto/16 :goto_1

    .line 1015
    :cond_c
    const-string/jumbo v2, "live_following"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1016
    const/16 v1, 0x800

    invoke-static {v0, v1}, Lcom/twitter/model/core/p;->a(II)I

    move-result v0

    goto/16 :goto_1

    .line 1022
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_1

    .line 1032
    :cond_d
    return v0

    .line 988
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static ai(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/timeline/w;
    .locals 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1615
    const-string/jumbo v27, ""

    .line 1616
    const-string/jumbo v26, ""

    .line 1617
    const-string/jumbo v25, ""

    .line 1618
    const-string/jumbo v24, ""

    .line 1619
    const-string/jumbo v23, ""

    .line 1620
    const-string/jumbo v22, ""

    .line 1621
    const-string/jumbo v21, ""

    .line 1622
    const-string/jumbo v20, ""

    .line 1623
    const-string/jumbo v19, ""

    .line 1624
    const-string/jumbo v18, ""

    .line 1625
    const-string/jumbo v17, ""

    .line 1626
    const-string/jumbo v16, ""

    .line 1627
    const-string/jumbo v15, ""

    .line 1628
    const-string/jumbo v14, ""

    .line 1629
    const/4 v13, 0x0

    .line 1630
    const/4 v12, 0x0

    .line 1631
    const/16 v11, 0xb4

    .line 1632
    const/4 v10, 0x0

    .line 1633
    const/4 v7, 0x0

    .line 1634
    const-wide/16 v8, 0x0

    .line 1635
    const/4 v6, 0x0

    .line 1636
    const-string/jumbo v5, ""

    .line 1637
    const-string/jumbo v4, ""

    .line 1638
    const-string/jumbo v3, ""

    .line 1641
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    .line 1642
    :goto_0
    if-eqz v2, :cond_16

    sget-object v28, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    move-object/from16 v0, v28

    if-eq v2, v0, :cond_16

    .line 1643
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v28

    .line 1644
    sget-object v29, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v2

    aget v2, v29, v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :pswitch_0
    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-wide/from16 v34, v8

    move v8, v7

    move v9, v10

    move-wide/from16 v6, v34

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    .line 1729
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v27

    move-object/from16 v34, v27

    move-object/from16 v27, v26

    move-object/from16 v26, v25

    move-object/from16 v25, v24

    move-object/from16 v24, v23

    move-object/from16 v23, v22

    move-object/from16 v22, v21

    move-object/from16 v21, v20

    move-object/from16 v20, v19

    move-object/from16 v19, v18

    move-object/from16 v18, v17

    move-object/from16 v17, v16

    move-object/from16 v16, v15

    move-object v15, v14

    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    move v11, v10

    move v10, v9

    move/from16 v35, v8

    move-wide v8, v6

    move/from16 v7, v35

    move v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object/from16 v2, v34

    goto :goto_0

    .line 1646
    :pswitch_1
    const-string/jumbo v2, "text"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1647
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v34, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-wide/from16 v35, v8

    move v8, v7

    move v9, v10

    move-wide/from16 v6, v35

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v2

    move-object/from16 v2, v34

    goto :goto_1

    .line 1648
    :cond_1
    const-string/jumbo v2, "header"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1649
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v26, v27

    move-object/from16 v34, v4

    move-object v4, v5

    move v5, v6

    move-wide/from16 v35, v8

    move v8, v7

    move v9, v10

    move-wide/from16 v6, v35

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v2

    move-object v2, v3

    move-object/from16 v3, v34

    goto/16 :goto_1

    .line 1650
    :cond_2
    const-string/jumbo v2, "action_text"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1651
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move/from16 v34, v6

    move-wide/from16 v35, v8

    move v8, v7

    move v9, v10

    move-wide/from16 v6, v35

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move/from16 v5, v34

    goto/16 :goto_1

    .line 1652
    :cond_3
    const-string/jumbo v2, "action_url"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1653
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move-object/from16 v34, v5

    move v5, v6

    move-wide/from16 v35, v8

    move v8, v7

    move v9, v10

    move-wide/from16 v6, v35

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v2

    move-object v2, v3

    move-object v3, v4

    move-object/from16 v4, v34

    goto/16 :goto_1

    .line 1654
    :cond_4
    const-string/jumbo v2, "trigger"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1655
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move-wide/from16 v34, v8

    move v8, v7

    move v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-wide/from16 v6, v34

    goto/16 :goto_1

    .line 1656
    :cond_5
    const-string/jumbo v2, "icon"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1657
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move/from16 v34, v7

    move/from16 v35, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-wide v6, v8

    move/from16 v8, v34

    move/from16 v9, v35

    goto/16 :goto_1

    .line 1658
    :cond_6
    const-string/jumbo v2, "format"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1659
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move/from16 v34, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-wide/from16 v35, v8

    move/from16 v9, v34

    move v8, v7

    move-wide/from16 v6, v35

    goto/16 :goto_1

    .line 1660
    :cond_7
    const-string/jumbo v2, "background_image_url"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1661
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move-object/from16 v34, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-wide/from16 v35, v8

    move v8, v7

    move v9, v10

    move-wide/from16 v6, v35

    move v10, v11

    move-object/from16 v11, v34

    goto/16 :goto_1

    .line 1662
    :cond_8
    const-string/jumbo v2, "template"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1663
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move/from16 v34, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-wide/from16 v35, v8

    move v8, v7

    move v9, v10

    move-wide/from16 v6, v35

    move/from16 v10, v34

    goto/16 :goto_1

    .line 1668
    :pswitch_2
    const-string/jumbo v2, "prompt_id"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1669
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->i()I

    move-result v2

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move/from16 v34, v6

    move-wide/from16 v35, v8

    move v8, v7

    move v9, v2

    move-wide/from16 v6, v35

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move/from16 v5, v34

    goto/16 :goto_1

    .line 1670
    :cond_9
    const-string/jumbo v2, "persistence"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1671
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->i()I

    move-result v2

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move-object/from16 v34, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-wide/from16 v35, v8

    move v8, v7

    move v9, v10

    move-wide/from16 v6, v35

    move v10, v2

    move-object/from16 v2, v34

    goto/16 :goto_1

    .line 1676
    :pswitch_3
    const-string/jumbo v2, "entities"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1677
    const-class v2, Lcom/twitter/model/core/bm;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/core/bm;

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move-wide/from16 v34, v8

    move v8, v7

    move v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-wide/from16 v6, v34

    goto/16 :goto_1

    .line 1678
    :cond_a
    const-string/jumbo v2, "header_entities"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1679
    const-class v2, Lcom/twitter/model/core/bm;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/core/bm;

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move/from16 v34, v10

    move v10, v11

    move-object v11, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-wide/from16 v35, v8

    move/from16 v9, v34

    move v8, v7

    move-wide/from16 v6, v35

    goto/16 :goto_1

    .line 1680
    :cond_b
    const-string/jumbo v2, "data"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1681
    invoke-static/range {p0 .. p0}, Lcom/twitter/library/api/at;->aj(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/HashMap;

    move-result-object v30

    .line 1682
    const-string/jumbo v2, "tweetId"

    move-object/from16 v0, v30

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1683
    const-string/jumbo v2, "tweetId"

    move-object/from16 v0, v30

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    .line 1684
    const-wide/16 v32, 0x0

    cmp-long v2, v28, v32

    if-lez v2, :cond_c

    move-wide/from16 v8, v28

    .line 1688
    :cond_c
    const-string/jumbo v2, "insertionIndex"

    move-object/from16 v0, v30

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1689
    const-string/jumbo v2, "insertionIndex"

    move-object/from16 v0, v30

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1691
    :cond_d
    const-string/jumbo v2, "tooltipTarget"

    move-object/from16 v0, v30

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1692
    const-string/jumbo v2, "tooltipTarget"

    move-object/from16 v0, v30

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v18, v2

    .line 1694
    :cond_e
    const-string/jumbo v2, "tweetSelection"

    move-object/from16 v0, v30

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1695
    const-string/jumbo v2, "tweetSelection"

    move-object/from16 v0, v30

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v17, v2

    .line 1697
    :cond_f
    const-string/jumbo v2, "isAppGraphPrompt"

    move-object/from16 v0, v30

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1698
    const-string/jumbo v2, "isAppGraphPrompt"

    move-object/from16 v0, v30

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 1700
    :cond_10
    const-string/jumbo v2, "clientExperimentKey"

    move-object/from16 v0, v30

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1701
    const-string/jumbo v2, "clientExperimentKey"

    move-object/from16 v0, v30

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v5, v2

    .line 1703
    :cond_11
    const-string/jumbo v2, "clientExperimentBucket"

    move-object/from16 v0, v30

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1704
    const-string/jumbo v2, "clientExperimentBucket"

    move-object/from16 v0, v30

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v4, v2

    .line 1706
    :cond_12
    const-string/jumbo v2, "displayLocation"

    move-object/from16 v0, v30

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1707
    const-string/jumbo v2, "displayLocation"

    move-object/from16 v0, v30

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v3, v2

    .line 1709
    :cond_13
    const-string/jumbo v2, "email"

    move-object/from16 v0, v30

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1710
    const-string/jumbo v2, "email"

    move-object/from16 v0, v30

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v16, v2

    .line 1712
    :cond_14
    const-string/jumbo v2, "corrected_email"

    move-object/from16 v0, v30

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1713
    const-string/jumbo v2, "corrected_email"

    move-object/from16 v0, v30

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v15, v2

    .line 1715
    :cond_15
    const-string/jumbo v2, "phone_number"

    move-object/from16 v0, v30

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1716
    const-string/jumbo v2, "phone_number"

    move-object/from16 v0, v30

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_2
    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move-object/from16 v34, v5

    move v5, v6

    move-wide/from16 v35, v8

    move v8, v7

    move v9, v10

    move-wide/from16 v6, v35

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v2

    move-object v2, v3

    move-object v3, v4

    move-object/from16 v4, v34

    .line 1718
    goto/16 :goto_1

    .line 1722
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-wide/from16 v34, v8

    move v8, v7

    move v9, v10

    move-wide/from16 v6, v34

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    .line 1723
    goto/16 :goto_1

    .line 1732
    :cond_16
    new-instance v2, Lcom/twitter/model/timeline/y;

    invoke-direct {v2}, Lcom/twitter/model/timeline/y;-><init>()V

    .line 1733
    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lcom/twitter/model/timeline/y;->a(Ljava/lang/String;)Lcom/twitter/model/timeline/y;

    move-result-object v2

    .line 1734
    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Lcom/twitter/model/timeline/y;->b(Ljava/lang/String;)Lcom/twitter/model/timeline/y;

    move-result-object v2

    .line 1735
    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/twitter/model/timeline/y;->c(Ljava/lang/String;)Lcom/twitter/model/timeline/y;

    move-result-object v2

    .line 1736
    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Lcom/twitter/model/timeline/y;->d(Ljava/lang/String;)Lcom/twitter/model/timeline/y;

    move-result-object v2

    .line 1737
    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/twitter/model/timeline/y;->e(Ljava/lang/String;)Lcom/twitter/model/timeline/y;

    move-result-object v2

    .line 1738
    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/twitter/model/timeline/y;->f(Ljava/lang/String;)Lcom/twitter/model/timeline/y;

    move-result-object v2

    .line 1739
    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/twitter/model/timeline/y;->p(Ljava/lang/String;)Lcom/twitter/model/timeline/y;

    move-result-object v2

    .line 1740
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/twitter/model/timeline/y;->g(Ljava/lang/String;)Lcom/twitter/model/timeline/y;

    move-result-object v2

    .line 1741
    invoke-virtual {v2, v11}, Lcom/twitter/model/timeline/y;->b(I)Lcom/twitter/model/timeline/y;

    move-result-object v2

    .line 1742
    invoke-virtual {v2, v10}, Lcom/twitter/model/timeline/y;->a(I)Lcom/twitter/model/timeline/y;

    move-result-object v2

    .line 1743
    invoke-virtual {v2, v13}, Lcom/twitter/model/timeline/y;->a(Lcom/twitter/model/core/bm;)Lcom/twitter/model/timeline/y;

    move-result-object v2

    .line 1744
    invoke-virtual {v2, v12}, Lcom/twitter/model/timeline/y;->b(Lcom/twitter/model/core/bm;)Lcom/twitter/model/timeline/y;

    move-result-object v2

    .line 1745
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/twitter/model/timeline/y;->h(Ljava/lang/String;)Lcom/twitter/model/timeline/y;

    move-result-object v2

    .line 1746
    invoke-virtual {v2, v8, v9}, Lcom/twitter/model/timeline/y;->a(J)Lcom/twitter/model/timeline/y;

    move-result-object v2

    .line 1747
    invoke-virtual {v2, v7}, Lcom/twitter/model/timeline/y;->c(I)Lcom/twitter/model/timeline/y;

    move-result-object v2

    .line 1748
    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/twitter/model/timeline/y;->i(Ljava/lang/String;)Lcom/twitter/model/timeline/y;

    move-result-object v2

    .line 1749
    invoke-virtual {v2, v6}, Lcom/twitter/model/timeline/y;->b(Z)Lcom/twitter/model/timeline/y;

    move-result-object v2

    .line 1750
    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/twitter/model/timeline/y;->j(Ljava/lang/String;)Lcom/twitter/model/timeline/y;

    move-result-object v2

    .line 1751
    invoke-virtual {v2, v5}, Lcom/twitter/model/timeline/y;->k(Ljava/lang/String;)Lcom/twitter/model/timeline/y;

    move-result-object v2

    .line 1752
    invoke-virtual {v2, v4}, Lcom/twitter/model/timeline/y;->l(Ljava/lang/String;)Lcom/twitter/model/timeline/y;

    move-result-object v2

    .line 1753
    invoke-virtual {v2, v3}, Lcom/twitter/model/timeline/y;->m(Ljava/lang/String;)Lcom/twitter/model/timeline/y;

    move-result-object v2

    .line 1754
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/twitter/model/timeline/y;->n(Ljava/lang/String;)Lcom/twitter/model/timeline/y;

    move-result-object v2

    .line 1755
    invoke-virtual {v2, v15}, Lcom/twitter/model/timeline/y;->o(Ljava/lang/String;)Lcom/twitter/model/timeline/y;

    move-result-object v2

    .line 1756
    invoke-virtual {v2, v14}, Lcom/twitter/model/timeline/y;->q(Ljava/lang/String;)Lcom/twitter/model/timeline/y;

    move-result-object v2

    .line 1757
    invoke-virtual {v2}, Lcom/twitter/model/timeline/y;->q()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/timeline/w;

    .line 1732
    return-object v2

    :cond_17
    move-object v2, v14

    goto/16 :goto_2

    .line 1644
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static aj(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1765
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1766
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 1767
    :goto_0
    if-eqz v0, :cond_b

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v2, :cond_b

    .line 1768
    sget-object v2, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 1805
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 1770
    :pswitch_1
    const-string/jumbo v0, "tooltip_tweet_id"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1771
    const-string/jumbo v0, "tweetId"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->p()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1772
    :cond_1
    const-string/jumbo v0, "tooltip_target"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1773
    const-string/jumbo v0, "tooltipTarget"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1774
    :cond_2
    const-string/jumbo v0, "insertion_index"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1775
    const-string/jumbo v0, "insertionIndex"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->o()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1776
    :cond_3
    const-string/jumbo v0, "app_graph_optin"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1777
    const-string/jumbo v0, "isAppGraphPrompt"

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/JsonParser;->a(Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1778
    :cond_4
    const-string/jumbo v0, "tweet_selection"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1779
    const-string/jumbo v0, "tweetSelection"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1780
    :cond_5
    const-string/jumbo v0, "client_experiment_key"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1781
    const-string/jumbo v0, "clientExperimentKey"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1782
    :cond_6
    const-string/jumbo v0, "client_experiment_bucket"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1783
    const-string/jumbo v0, "clientExperimentBucket"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1784
    :cond_7
    const-string/jumbo v0, "display_location"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1785
    const-string/jumbo v0, "displayLocation"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1786
    :cond_8
    const-string/jumbo v0, "email"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1787
    const-string/jumbo v0, "email"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1788
    :cond_9
    const-string/jumbo v0, "corrected_email"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1789
    const-string/jumbo v0, "corrected_email"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1790
    :cond_a
    const-string/jumbo v0, "phone_number"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1791
    const-string/jumbo v0, "phone_number"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1797
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_1

    .line 1807
    :cond_b
    return-object v1

    .line 1768
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static ak(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1970
    const/4 v1, 0x0

    .line 1971
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 1972
    :goto_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_1

    .line 1973
    sget-object v2, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 1989
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto :goto_0

    .line 1975
    :pswitch_1
    const-string/jumbo v1, "text"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1976
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1982
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 1991
    :cond_1
    return-object v0

    .line 1973
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static al(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/cs;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2068
    invoke-static {p0}, Lcom/twitter/library/api/at;->z(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2069
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2071
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2072
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2073
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cs;

    .line 2074
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/twitter/library/api/at;->a(Lcom/twitter/model/core/cs;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2075
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 2080
    :goto_1
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static am(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/search/a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2166
    .line 2169
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v3, v0

    move v0, v2

    .line 2170
    :goto_0
    if-eqz v3, :cond_2

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v3, v4, :cond_2

    .line 2171
    sget-object v4, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    .line 2190
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto :goto_0

    .line 2173
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v3

    .line 2174
    const-string/jumbo v4, "follow"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v1

    .line 2175
    goto :goto_1

    .line 2176
    :cond_1
    const-string/jumbo v4, "nearby"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 2177
    goto :goto_1

    .line 2183
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 2193
    :cond_2
    new-instance v1, Lcom/twitter/model/search/a;

    invoke-direct {v1, v2, v0}, Lcom/twitter/model/search/a;-><init>(ZZ)V

    return-object v1

    .line 2171
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static an(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/api/search/TwitterTypeAhead;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3048
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3049
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 3050
    :goto_0
    if-eqz v0, :cond_1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v2, :cond_1

    .line 3051
    sget-object v2, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 3067
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 3053
    :pswitch_1
    invoke-static {p0}, Lcom/twitter/library/api/at;->ao(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/library/api/search/TwitterTypeAhead;

    move-result-object v0

    .line 3054
    if-eqz v0, :cond_0

    .line 3055
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3060
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 3069
    :cond_1
    return-object v1

    .line 3051
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static ao(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/library/api/search/TwitterTypeAhead;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 3073
    new-instance v10, Lcom/twitter/model/core/cv;

    invoke-direct {v10}, Lcom/twitter/model/core/cv;-><init>()V

    .line 3078
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 3079
    const/16 v8, 0x400

    move-object v7, v2

    move v6, v4

    move v9, v4

    .line 3080
    :goto_0
    if-eqz v0, :cond_c

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_c

    .line 3081
    sget-object v1, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v0, v8

    move v1, v9

    .line 3151
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    move v8, v0

    move v9, v1

    move-object v0, v3

    goto :goto_0

    .line 3083
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v0

    .line 3084
    const-string/jumbo v1, "name"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3085
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/twitter/model/core/cv;->b(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move v0, v8

    move v1, v9

    goto :goto_1

    .line 3086
    :cond_1
    const-string/jumbo v1, "screen_name"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3087
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/twitter/model/core/cv;->g(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move v0, v8

    move v1, v9

    goto :goto_1

    .line 3088
    :cond_2
    const-string/jumbo v1, "profile_image_url_https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3089
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/twitter/model/core/cv;->c(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move v0, v8

    move v1, v9

    goto :goto_1

    .line 3090
    :cond_3
    const-string/jumbo v1, "location"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3091
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/twitter/model/core/cv;->h(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move v0, v8

    move v1, v9

    goto :goto_1

    .line 3092
    :cond_4
    const-string/jumbo v1, "customer_service_state"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3093
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/model/businessprofiles/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/twitter/model/core/cv;->a(Ljava/lang/String;)Lcom/twitter/model/core/cv;

    move v0, v8

    move v1, v9

    goto :goto_1

    .line 3098
    :pswitch_2
    const-string/jumbo v0, "verified"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3099
    invoke-virtual {v10, v11}, Lcom/twitter/model/core/cv;->c(Z)Lcom/twitter/model/core/cv;

    move v0, v8

    move v1, v9

    goto/16 :goto_1

    .line 3100
    :cond_5
    const-string/jumbo v0, "is_translator"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3101
    invoke-virtual {v10, v11}, Lcom/twitter/model/core/cv;->d(Z)Lcom/twitter/model/core/cv;

    move v0, v8

    move v1, v9

    goto/16 :goto_1

    .line 3102
    :cond_6
    const-string/jumbo v0, "is_lifeline_institution"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3103
    invoke-virtual {v10, v11}, Lcom/twitter/model/core/cv;->e(Z)Lcom/twitter/model/core/cv;

    move v0, v8

    move v1, v9

    goto/16 :goto_1

    .line 3104
    :cond_7
    const-string/jumbo v0, "is_dm_able"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3105
    or-int/lit8 v0, v8, 0x8

    move v1, v9

    goto/16 :goto_1

    .line 3110
    :pswitch_3
    const-string/jumbo v0, "can_media_tag"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3111
    and-int/lit16 v0, v8, -0x401

    move v1, v9

    goto/16 :goto_1

    .line 3116
    :pswitch_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v0

    .line 3117
    const-string/jumbo v1, "id"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3118
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->j()J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Lcom/twitter/model/core/cv;->a(J)Lcom/twitter/model/core/cv;

    move v0, v8

    move v1, v9

    goto/16 :goto_1

    .line 3119
    :cond_8
    const-string/jumbo v1, "rounded_score"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3120
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->i()I

    move-result v0

    move v1, v0

    move v0, v8

    goto/16 :goto_1

    .line 3121
    :cond_9
    const-string/jumbo v1, "rounded_graph_weight"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3122
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->i()I

    move-result v6

    move v0, v8

    move v1, v9

    goto/16 :goto_1

    .line 3127
    :pswitch_5
    const-string/jumbo v0, "tokens"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3128
    invoke-static {p0}, Lcom/twitter/library/api/at;->as(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/ArrayList;

    move-result-object v7

    move v0, v8

    move v1, v9

    goto/16 :goto_1

    .line 3130
    :cond_a
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    move v0, v8

    move v1, v9

    .line 3132
    goto/16 :goto_1

    .line 3135
    :pswitch_6
    const-string/jumbo v0, "social_context"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3136
    const-class v0, Lcom/twitter/model/json/search/JsonSearchSocialProof;

    invoke-static {p0, v0}, Lcom/twitter/model/json/common/g;->a(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/core/TwitterSocialProof;

    .line 3138
    if-eqz v1, :cond_e

    .line 3139
    new-instance v0, Lcom/twitter/model/search/TwitterUserMetadata;

    move-object v3, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/twitter/model/search/TwitterUserMetadata;-><init>(Lcom/twitter/model/core/TwitterSocialProof;Ljava/lang/String;Ljava/lang/String;ZLcom/twitter/model/core/bb;)V

    invoke-virtual {v10, v0}, Lcom/twitter/model/core/cv;->a(Lcom/twitter/model/search/TwitterUserMetadata;)Lcom/twitter/model/core/cv;

    .line 3140
    iget v0, v1, Lcom/twitter/model/core/TwitterSocialProof;->g:I

    or-int/2addr v0, v8

    :goto_2
    move v1, v9

    .line 3142
    goto/16 :goto_1

    .line 3143
    :cond_b
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    move v0, v8

    move v1, v9

    .line 3145
    goto/16 :goto_1

    .line 3153
    :cond_c
    if-nez v7, :cond_d

    .line 3159
    :goto_3
    return-object v2

    .line 3157
    :cond_d
    invoke-virtual {v10, v8}, Lcom/twitter/model/core/cv;->i(I)Lcom/twitter/model/core/cv;

    .line 3159
    new-instance v3, Lcom/twitter/library/api/search/TwitterTypeAhead;

    .line 3160
    invoke-virtual {v10}, Lcom/twitter/model/core/cv;->q()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/twitter/model/core/TwitterUser;

    move v4, v11

    move v5, v9

    move-object v9, v2

    move-object v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/twitter/library/api/search/TwitterTypeAhead;-><init>(IIILjava/util/ArrayList;Lcom/twitter/model/core/TwitterUser;Lcom/twitter/library/api/search/TwitterSearchQuery;Ljava/lang/String;)V

    move-object v2, v3

    .line 3159
    goto :goto_3

    :cond_e
    move v0, v8

    goto :goto_2

    .line 3081
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private static ap(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/api/search/TwitterTypeAhead;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3164
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    .line 3165
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3166
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 3167
    :goto_0
    if-eqz v0, :cond_1

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v4, :cond_1

    .line 3168
    sget-object v4, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_0

    .line 3184
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 3170
    :pswitch_1
    invoke-static {p0, v2, v3}, Lcom/twitter/library/api/at;->a(Lcom/fasterxml/jackson/core/JsonParser;J)Lcom/twitter/library/api/search/TwitterTypeAhead;

    move-result-object v0

    .line 3171
    if-eqz v0, :cond_0

    .line 3172
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3177
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 3186
    :cond_1
    return-object v1

    .line 3168
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static aq(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/twitter/library/api/search/TwitterTypeAhead;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3252
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3253
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 3254
    :goto_0
    if-eqz v0, :cond_1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v2, :cond_1

    .line 3255
    sget-object v2, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 3271
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 3257
    :pswitch_1
    invoke-static {p0}, Lcom/twitter/library/api/at;->ar(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/library/api/search/TwitterTypeAhead;

    move-result-object v0

    .line 3258
    if-eqz v0, :cond_0

    .line 3259
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3264
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 3273
    :cond_1
    return-object v1

    .line 3255
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static ar(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/library/api/search/TwitterTypeAhead;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3278
    .line 3280
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move v2, v3

    move-object v7, v4

    .line 3281
    :goto_0
    if-eqz v0, :cond_1

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_1

    .line 3282
    sget-object v1, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 3305
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 3284
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v0

    .line 3285
    const-string/jumbo v1, "hashtag"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3286
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 3291
    :pswitch_2
    const-string/jumbo v0, "rounded_score"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3292
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->i()I

    move-result v2

    goto :goto_1

    .line 3298
    :pswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 3307
    :cond_1
    if-nez v7, :cond_2

    .line 3310
    :goto_2
    return-object v4

    :cond_2
    new-instance v0, Lcom/twitter/library/api/search/TwitterTypeAhead;

    const/4 v1, 0x2

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/twitter/library/api/search/TwitterTypeAhead;-><init>(IIILjava/util/ArrayList;Lcom/twitter/model/core/TwitterUser;Lcom/twitter/library/api/search/TwitterSearchQuery;Ljava/lang/String;)V

    move-object v4, v0

    goto :goto_2

    .line 3282
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static as(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3316
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3318
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 3319
    :goto_0
    if-eqz v0, :cond_2

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v2, :cond_2

    .line 3320
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_1

    .line 3321
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 3322
    :goto_1
    if-eqz v0, :cond_1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v2, :cond_1

    .line 3323
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->h:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "token"

    .line 3324
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3325
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3327
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 3330
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 3333
    :cond_2
    return-object v1
.end method

.method private static at(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/library/api/al;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 3479
    new-instance v3, Lcom/twitter/library/api/an;

    invoke-direct {v3}, Lcom/twitter/library/api/an;-><init>()V

    .line 3482
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v2, v0

    move-object v0, v1

    .line 3483
    :goto_0
    if-eqz v2, :cond_b

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v4, :cond_b

    .line 3484
    sget-object v4, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v2

    aget v2, v4, v2

    packed-switch v2, :pswitch_data_0

    .line 3583
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    goto :goto_0

    .line 3486
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    .line 3487
    const-string/jumbo v4, "name"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3488
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/twitter/library/api/an;->a(Ljava/lang/String;)Lcom/twitter/library/api/an;

    goto :goto_1

    .line 3489
    :cond_1
    const-string/jumbo v4, "key"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3490
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3491
    :cond_2
    const-string/jumbo v4, "banner"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3492
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/twitter/library/api/an;->b(Ljava/lang/String;)Lcom/twitter/library/api/an;

    goto :goto_1

    .line 3497
    :pswitch_2
    const-string/jumbo v2, "zero_rate"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3498
    invoke-virtual {v3, v6}, Lcom/twitter/library/api/an;->a(Z)Lcom/twitter/library/api/an;

    goto :goto_1

    .line 3503
    :pswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    .line 3504
    const-string/jumbo v4, "expire_seconds"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3505
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->j()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/twitter/library/api/an;->a(J)Lcom/twitter/library/api/an;

    goto :goto_1

    .line 3510
    :pswitch_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    .line 3511
    const-string/jumbo v4, "host_map"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3512
    invoke-static {p0}, Lcom/twitter/library/api/at;->au(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/twitter/library/api/an;->a(Ljava/util/Map;)Lcom/twitter/library/api/an;

    goto :goto_1

    .line 3513
    :cond_3
    const-string/jumbo v4, "display_flags"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3514
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    .line 3515
    :goto_2
    if-eqz v2, :cond_0

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v4, :cond_0

    .line 3516
    sget-object v4, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v2

    aget v2, v4, v2

    packed-switch v2, :pswitch_data_1

    .line 3546
    :cond_4
    :goto_3
    :pswitch_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    goto :goto_2

    .line 3518
    :pswitch_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    .line 3519
    const-string/jumbo v4, "inline_media_interstitial"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3520
    invoke-virtual {v3, v6}, Lcom/twitter/library/api/an;->b(Z)Lcom/twitter/library/api/an;

    goto :goto_3

    .line 3521
    :cond_5
    const-string/jumbo v4, "external_links_interstitial"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3522
    invoke-virtual {v3, v6}, Lcom/twitter/library/api/an;->c(Z)Lcom/twitter/library/api/an;

    goto :goto_3

    .line 3523
    :cond_6
    const-string/jumbo v4, "footer_text"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3524
    invoke-virtual {v3, v6}, Lcom/twitter/library/api/an;->d(Z)Lcom/twitter/library/api/an;

    goto :goto_3

    .line 3525
    :cond_7
    const-string/jumbo v4, "banner_message"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3526
    invoke-virtual {v3, v6}, Lcom/twitter/library/api/an;->e(Z)Lcom/twitter/library/api/an;

    goto :goto_3

    .line 3531
    :pswitch_7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    .line 3532
    const-string/jumbo v4, "zero_rate_videos"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3533
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/twitter/library/api/an;->f(Z)Lcom/twitter/library/api/an;

    goto :goto_3

    .line 3539
    :pswitch_8
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_3

    .line 3548
    :cond_8
    const-string/jumbo v4, "interstitial"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3549
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    .line 3550
    :goto_4
    if-eqz v2, :cond_0

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v4, :cond_0

    .line 3551
    sget-object v4, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v2

    aget v2, v4, v2

    packed-switch v2, :pswitch_data_2

    .line 3568
    :cond_9
    :goto_5
    :pswitch_9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    goto :goto_4

    .line 3553
    :pswitch_a
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    .line 3554
    const-string/jumbo v4, "text"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3555
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/twitter/library/api/an;->c(Ljava/lang/String;)Lcom/twitter/library/api/an;

    goto :goto_5

    .line 3561
    :pswitch_b
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_5

    .line 3571
    :cond_a
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_1

    .line 3576
    :pswitch_c
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_1

    .line 3586
    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {v3, v0}, Lcom/twitter/library/api/an;->d(Ljava/lang/String;)Lcom/twitter/library/api/al;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_c
    move-object v0, v1

    goto :goto_6

    .line 3484
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 3516
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_5
        :pswitch_5
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch

    .line 3551
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method

.method private static au(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3591
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3592
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 3593
    :goto_0
    if-eqz v0, :cond_2

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v2, :cond_2

    .line 3594
    sget-object v2, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 3627
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 3596
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    .line 3597
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 3598
    :goto_2
    if-eqz v0, :cond_0

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v3, :cond_0

    .line 3599
    sget-object v3, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_1

    .line 3615
    :cond_1
    :goto_3
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2

    .line 3601
    :pswitch_3
    const-string/jumbo v0, "host"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3602
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 3608
    :pswitch_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_3

    .line 3620
    :pswitch_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 3629
    :cond_2
    return-object v1

    .line 3594
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 3599
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private static av(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3824
    const-class v0, Lcom/twitter/model/json/livevideo/JsonLiveVideoEvent;

    invoke-static {p0, v0}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/json/livevideo/JsonLiveVideoEvent;

    .line 3825
    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, v0, Lcom/twitter/model/json/livevideo/JsonLiveVideoEvent;->a:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static aw(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/topic/TwitterTopic;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4131
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v13

    .line 4132
    const/4 v12, 0x0

    .line 4133
    const/16 v26, 0x0

    .line 4134
    const/16 v22, 0x0

    .line 4135
    const/4 v11, 0x0

    .line 4136
    const/16 v25, 0x0

    .line 4137
    const/4 v6, 0x0

    .line 4138
    const/4 v4, -0x1

    .line 4139
    const/4 v5, -0x1

    .line 4140
    const-wide/16 v8, 0x0

    .line 4142
    const/4 v7, 0x0

    .line 4143
    const/4 v10, 0x4

    .line 4144
    const/16 v23, 0x0

    .line 4145
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    .line 4146
    :goto_0
    if-eqz v2, :cond_f

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_f

    .line 4147
    sget-object v3, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v2, v10

    move v3, v5

    move-object/from16 v10, v26

    move/from16 v27, v4

    move-wide v4, v8

    move-object v8, v6

    move-object/from16 v9, v22

    move/from16 v6, v27

    .line 4215
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v14

    move-object/from16 v22, v9

    move-object/from16 v26, v10

    move v10, v2

    move-object v2, v14

    move/from16 v27, v6

    move-object v6, v8

    move-wide v8, v4

    move v5, v3

    move/from16 v4, v27

    goto :goto_0

    .line 4149
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    .line 4150
    const-string/jumbo v3, "name"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4151
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v2

    move v3, v5

    move-wide/from16 v27, v8

    move-object v8, v6

    move-object/from16 v9, v22

    move v6, v4

    move-wide/from16 v4, v27

    move/from16 v29, v10

    move-object v10, v2

    move/from16 v2, v29

    goto :goto_1

    .line 4152
    :cond_1
    const-string/jumbo v3, "description"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4153
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v2

    move v3, v5

    move-wide/from16 v27, v8

    move-object v8, v6

    move-object v9, v2

    move v6, v4

    move v2, v10

    move-wide/from16 v4, v27

    move-object/from16 v10, v26

    goto :goto_1

    .line 4154
    :cond_2
    const-string/jumbo v3, "user_id"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4155
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v2

    move v3, v5

    move v6, v4

    move-wide v4, v8

    move-object v8, v2

    move-object/from16 v9, v22

    move v2, v10

    move-object/from16 v10, v26

    goto :goto_1

    .line 4156
    :cond_3
    const-string/jumbo v3, "custom_timeline_url"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "url"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4159
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v2

    .line 4160
    invoke-static {v2}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v11, v2

    :cond_5
    move v2, v10

    move v3, v5

    move-object/from16 v10, v26

    move/from16 v27, v4

    move-wide v4, v8

    move-object v8, v6

    move-object/from16 v9, v22

    move/from16 v6, v27

    .line 4163
    goto/16 :goto_1

    :cond_6
    const-string/jumbo v3, "collection_type"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4164
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v25

    move v2, v10

    move v3, v5

    move-object/from16 v10, v26

    move/from16 v27, v4

    move-wide v4, v8

    move-object v8, v6

    move-object/from16 v9, v22

    move/from16 v6, v27

    goto/16 :goto_1

    .line 4165
    :cond_7
    const-string/jumbo v3, "id"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 4166
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v2

    move v3, v5

    move-object v12, v2

    move v2, v10

    move-object/from16 v10, v26

    move-object/from16 v27, v6

    move v6, v4

    move-wide v4, v8

    move-object/from16 v8, v27

    move-object/from16 v9, v22

    goto/16 :goto_1

    .line 4167
    :cond_8
    const-string/jumbo v3, "type"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4168
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v2

    .line 4169
    const-string/jumbo v3, "list"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 4170
    const/4 v2, 0x5

    :goto_2
    move v3, v5

    move-object/from16 v10, v26

    move/from16 v27, v4

    move-wide v4, v8

    move-object v8, v6

    move-object/from16 v9, v22

    move/from16 v6, v27

    .line 4174
    goto/16 :goto_1

    .line 4171
    :cond_9
    const-string/jumbo v3, "curated"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 4172
    const/4 v2, 0x4

    goto :goto_2

    .line 4178
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    .line 4179
    const-string/jumbo v3, "members"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 4180
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->i()I

    move-result v4

    move v2, v10

    move v3, v5

    move-object/from16 v10, v26

    move/from16 v27, v4

    move-wide v4, v8

    move-object v8, v6

    move-object/from16 v9, v22

    move/from16 v6, v27

    goto/16 :goto_1

    .line 4181
    :cond_a
    const-string/jumbo v3, "subscribers"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 4182
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->i()I

    move-result v5

    move v2, v10

    move v3, v5

    move-object/from16 v10, v26

    move/from16 v27, v4

    move-wide v4, v8

    move-object v8, v6

    move-object/from16 v9, v22

    move/from16 v6, v27

    goto/16 :goto_1

    .line 4183
    :cond_b
    const-string/jumbo v3, "most_recent_tweet_timestamp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 4184
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->j()J

    move-result-wide v2

    move-object v8, v6

    move-object/from16 v9, v22

    move v6, v4

    move/from16 v27, v5

    move-wide v4, v2

    move v2, v10

    move/from16 v3, v27

    move-object/from16 v10, v26

    goto/16 :goto_1

    .line 4185
    :cond_c
    const-string/jumbo v3, "id"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4186
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v2

    move v3, v5

    move-object v12, v2

    move v2, v10

    move-object/from16 v10, v26

    move-object/from16 v27, v6

    move v6, v4

    move-wide v4, v8

    move-object/from16 v8, v27

    move-object/from16 v9, v22

    goto/16 :goto_1

    .line 4192
    :pswitch_3
    const-string/jumbo v2, "following"

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4193
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->m()Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v7, 0x1

    :goto_3
    move v2, v10

    move v3, v5

    move-object/from16 v10, v26

    move/from16 v27, v4

    move-wide v4, v8

    move-object v8, v6

    move-object/from16 v9, v22

    move/from16 v6, v27

    goto/16 :goto_1

    :cond_d
    const/4 v7, 0x2

    goto :goto_3

    .line 4199
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    move v2, v10

    move v3, v5

    move-object/from16 v10, v26

    move/from16 v27, v4

    move-wide v4, v8

    move-object v8, v6

    move-object/from16 v9, v22

    move/from16 v6, v27

    .line 4200
    goto/16 :goto_1

    .line 4203
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    .line 4204
    const-string/jumbo v3, "owner"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 4205
    const-class v2, Lcom/twitter/model/core/TwitterUser;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/core/TwitterUser;

    move-object/from16 v23, v2

    move v3, v5

    move v2, v10

    move-object/from16 v10, v26

    move/from16 v27, v4

    move-wide v4, v8

    move-object v8, v6

    move-object/from16 v9, v22

    move/from16 v6, v27

    goto/16 :goto_1

    .line 4207
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    move v2, v10

    move v3, v5

    move-object/from16 v10, v26

    move/from16 v27, v4

    move-wide v4, v8

    move-object v8, v6

    move-object/from16 v9, v22

    move/from16 v6, v27

    .line 4209
    goto/16 :goto_1

    .line 4220
    :cond_f
    if-eqz v23, :cond_10

    .line 4221
    invoke-virtual/range {v23 .. v23}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v18

    .line 4226
    :goto_4
    new-instance v3, Lcom/twitter/model/topic/e;

    const/4 v6, 0x0

    const-wide/16 v14, 0x3e8

    mul-long/2addr v8, v14

    invoke-direct/range {v3 .. v9}, Lcom/twitter/model/topic/e;-><init>(IIZIJ)V

    .line 4229
    if-nez v12, :cond_11

    move-object v9, v13

    .line 4233
    :goto_5
    new-instance v5, Lcom/twitter/model/topic/TwitterTopic;

    new-instance v6, Lcom/twitter/model/topic/l;

    const/4 v2, 0x0

    invoke-direct {v6, v10, v9, v2}, Lcom/twitter/model/topic/l;-><init>(ILjava/lang/String;Z)V

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x0

    move-object/from16 v7, v26

    move-object/from16 v8, v22

    move-object/from16 v22, v3

    invoke-direct/range {v5 .. v25}, Lcom/twitter/model/topic/TwitterTopic;-><init>(Lcom/twitter/model/topic/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLcss;Ljava/util/ArrayList;Lcom/twitter/model/topic/d;Lcom/twitter/model/core/TwitterUser;Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 4223
    :cond_10
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    goto :goto_4

    :cond_11
    move-object v9, v12

    goto :goto_5

    :cond_12
    move v2, v10

    goto/16 :goto_2

    .line 4147
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static ax(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/topic/TwitterTopic;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4332
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4333
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 4334
    :goto_0
    if-eqz v0, :cond_2

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v2, :cond_2

    .line 4335
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_1

    .line 4336
    invoke-static {p0}, Lcom/twitter/library/api/at;->aw(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/topic/TwitterTopic;

    move-result-object v0

    .line 4337
    if-eqz v0, :cond_0

    .line 4338
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4343
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 4340
    :cond_1
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_0

    .line 4341
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 4345
    :cond_2
    return-object v1
.end method

.method private static ay(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/timeline/l;
    .locals 1

    .prologue
    .line 5070
    const-class v0, Lcom/twitter/model/timeline/l;

    invoke-static {p0, v0}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/l;

    return-object v0
.end method

.method private static az(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/LinkedHashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5345
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 5346
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 5347
    :goto_0
    if-eqz v0, :cond_0

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v2, :cond_0

    .line 5348
    sget-object v2, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 5362
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 5350
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5355
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 5364
    :cond_0
    return-object v1

    .line 5348
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static b(Lcom/fasterxml/jackson/core/JsonParser;Ljava/util/ArrayList;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/twitter/model/search/g;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 2027
    .line 2028
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v2, v0

    move v0, v1

    .line 2029
    :goto_0
    if-eqz v2, :cond_3

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_3

    .line 2030
    sget-object v3, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 2058
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    goto :goto_0

    .line 2032
    :pswitch_1
    const-string/jumbo v2, "suggestion_type"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2033
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v2

    .line 2034
    const-string/jumbo v3, "spelling"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2035
    const/4 v0, 0x2

    goto :goto_1

    .line 2036
    :cond_1
    const-string/jumbo v3, "related"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2037
    const/4 v0, 0x3

    goto :goto_1

    .line 2043
    :pswitch_2
    const-string/jumbo v2, "suggestions"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2044
    invoke-static {p0, p1}, Lcom/twitter/library/api/at;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 2046
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 2051
    :pswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 2060
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move v0, v1

    .line 2063
    :cond_5
    return v0

    .line 2030
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static b(Lcom/fasterxml/jackson/core/JsonParser;Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/library/api/ai;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3696
    invoke-static {p0, p1}, Lcom/twitter/library/api/at;->i(Lcom/fasterxml/jackson/core/JsonParser;Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/library/api/ag;

    move-result-object v0

    .line 3697
    new-instance v1, Lcom/twitter/library/api/ai;

    invoke-direct {v1, v0}, Lcom/twitter/library/api/ai;-><init>(Lcom/twitter/library/api/ag;)V

    return-object v1
.end method

.method private static b(Lcom/fasterxml/jackson/core/JsonParser;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/Map;Z)Lcom/twitter/model/timeline/ay;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/cs;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/topic/TwitterTopic;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/moments/ad;",
            ">;Z)",
            "Lcom/twitter/model/timeline/ay;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4568
    const/4 v10, 0x0

    .line 4569
    const/4 v9, 0x0

    .line 4570
    const/4 v8, 0x0

    .line 4571
    const-wide/16 v6, 0x0

    .line 4572
    const/4 v5, 0x0

    .line 4573
    const/4 v4, 0x0

    .line 4574
    const/4 v3, 0x0

    .line 4576
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    .line 4577
    :goto_0
    if-eqz v2, :cond_17

    sget-object v11, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v11, :cond_17

    .line 4578
    sget-object v11, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v2

    aget v2, v11, v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :pswitch_0
    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v8

    move-object v8, v9

    move-object v9, v10

    .line 4662
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v10

    move-object v14, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v14

    goto :goto_0

    .line 4580
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    .line 4581
    const-string/jumbo v11, "tweet"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 4582
    new-instance v2, Lcom/twitter/model/timeline/cf;

    invoke-direct {v2}, Lcom/twitter/model/timeline/cf;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {p0, v0, v1, v2}, Lcom/twitter/library/api/at;->a(Lcom/fasterxml/jackson/core/JsonParser;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/twitter/model/timeline/cf;)Lcom/twitter/model/timeline/az;

    move-result-object v2

    move-object v3, v4

    move-object v4, v5

    move-object v5, v8

    move-object v8, v9

    move-object v9, v10

    goto :goto_1

    .line 4584
    :cond_1
    const-string/jumbo v11, "conversation"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 4585
    new-instance v2, Lcom/twitter/model/timeline/av;

    invoke-direct {v2}, Lcom/twitter/model/timeline/av;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {p0, v0, v1, v2}, Lcom/twitter/library/api/at;->a(Lcom/fasterxml/jackson/core/JsonParser;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/twitter/model/timeline/av;)Lcom/twitter/model/timeline/az;

    move-result-object v2

    move-object v3, v4

    move-object v4, v5

    move-object v5, v8

    move-object v8, v9

    move-object v9, v10

    goto :goto_1

    .line 4587
    :cond_2
    const-string/jumbo v11, "recap"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 4588
    new-instance v2, Lcom/twitter/model/timeline/cc;

    invoke-direct {v2}, Lcom/twitter/model/timeline/cc;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {p0, v0, v1, v2}, Lcom/twitter/library/api/at;->a(Lcom/fasterxml/jackson/core/JsonParser;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/twitter/model/timeline/cc;)Lcom/twitter/model/timeline/az;

    move-result-object v2

    move-object v3, v4

    move-object v4, v5

    move-object v5, v8

    move-object v8, v9

    move-object v9, v10

    goto :goto_1

    .line 4590
    :cond_3
    const-string/jumbo v11, "media_gallery"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 4591
    new-instance v2, Lcom/twitter/model/timeline/bj;

    invoke-direct {v2}, Lcom/twitter/model/timeline/bj;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {p0, v0, v1, v2}, Lcom/twitter/library/api/at;->a(Lcom/fasterxml/jackson/core/JsonParser;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/twitter/model/timeline/bj;)Lcom/twitter/model/timeline/az;

    move-result-object v2

    move-object v3, v4

    move-object v4, v5

    move-object v5, v8

    move-object v8, v9

    move-object v9, v10

    goto :goto_1

    .line 4593
    :cond_4
    const-string/jumbo v11, "carousel"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 4594
    new-instance v2, Lcom/twitter/model/timeline/co;

    invoke-direct {v2}, Lcom/twitter/model/timeline/co;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {p0, v0, v1, v2}, Lcom/twitter/library/api/at;->a(Lcom/fasterxml/jackson/core/JsonParser;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/twitter/model/timeline/co;)Lcom/twitter/model/timeline/az;

    move-result-object v2

    move-object v3, v4

    move-object v4, v5

    move-object v5, v8

    move-object v8, v9

    move-object v9, v10

    goto/16 :goto_1

    .line 4596
    :cond_5
    const-string/jumbo v11, "who_to_follow"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 4597
    new-instance v2, Lcom/twitter/model/timeline/cw;

    invoke-direct {v2}, Lcom/twitter/model/timeline/cw;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {p0, v0, v1, v2}, Lcom/twitter/library/api/at;->a(Lcom/fasterxml/jackson/core/JsonParser;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/twitter/model/timeline/cw;)Lcom/twitter/model/timeline/az;

    move-result-object v2

    move-object v3, v4

    move-object v4, v5

    move-object v5, v8

    move-object v8, v9

    move-object v9, v10

    goto/16 :goto_1

    .line 4599
    :cond_6
    const-string/jumbo v11, "topic"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 4600
    new-instance v2, Lcom/twitter/model/timeline/cl;

    invoke-direct {v2}, Lcom/twitter/model/timeline/cl;-><init>()V

    invoke-static {p0, v2}, Lcom/twitter/library/api/at;->a(Lcom/fasterxml/jackson/core/JsonParser;Lcom/twitter/model/timeline/cl;)Lcom/twitter/model/timeline/az;

    move-result-object v2

    move-object v3, v4

    move-object v4, v5

    move-object v5, v8

    move-object v8, v9

    move-object v9, v10

    goto/16 :goto_1

    .line 4601
    :cond_7
    const-string/jumbo v11, "moment_start"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 4602
    const/4 v2, 0x1

    new-instance v3, Lcom/twitter/model/timeline/bq;

    invoke-direct {v3}, Lcom/twitter/model/timeline/bq;-><init>()V

    move-object/from16 v0, p4

    invoke-static {v2, p0, v0, v3}, Lcom/twitter/library/api/at;->a(ILcom/fasterxml/jackson/core/JsonParser;Ljava/util/Map;Lcom/twitter/model/timeline/bq;)Lcom/twitter/model/timeline/az;

    move-result-object v2

    move-object v3, v4

    move-object v4, v5

    move-object v5, v8

    move-object v8, v9

    move-object v9, v10

    goto/16 :goto_1

    .line 4604
    :cond_8
    const-string/jumbo v11, "moment_end"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 4605
    const/4 v2, 0x2

    new-instance v3, Lcom/twitter/model/timeline/bq;

    invoke-direct {v3}, Lcom/twitter/model/timeline/bq;-><init>()V

    move-object/from16 v0, p4

    invoke-static {v2, p0, v0, v3}, Lcom/twitter/library/api/at;->a(ILcom/fasterxml/jackson/core/JsonParser;Ljava/util/Map;Lcom/twitter/model/timeline/bq;)Lcom/twitter/model/timeline/az;

    move-result-object v2

    move-object v3, v4

    move-object v4, v5

    move-object v5, v8

    move-object v8, v9

    move-object v9, v10

    goto/16 :goto_1

    .line 4607
    :cond_9
    const-string/jumbo v11, "message"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 4608
    new-instance v2, Lcom/twitter/model/timeline/bn;

    invoke-direct {v2}, Lcom/twitter/model/timeline/bn;-><init>()V

    invoke-static {p0, v2}, Lcom/twitter/library/api/at;->a(Lcom/fasterxml/jackson/core/JsonParser;Lcom/twitter/model/timeline/bn;)Lcom/twitter/model/timeline/az;

    move-result-object v2

    move-object v3, v4

    move-object v4, v5

    move-object v5, v8

    move-object v8, v9

    move-object v9, v10

    goto/16 :goto_1

    .line 4609
    :cond_a
    const-string/jumbo v11, "ad_slot"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 4610
    new-instance v3, Lcom/twitter/model/timeline/as;

    invoke-direct {v3}, Lcom/twitter/model/timeline/as;-><init>()V

    const-class v2, Lctd;

    .line 4611
    invoke-static {p0, v2}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lctd;

    invoke-virtual {v3, v2}, Lcom/twitter/model/timeline/as;->a(Lctd;)Lcom/twitter/model/timeline/as;

    move-result-object v2

    move-object v3, v4

    move-object v4, v5

    move-object v5, v8

    move-object v8, v9

    move-object v9, v10

    goto/16 :goto_1

    .line 4612
    :cond_b
    const-string/jumbo v11, "suggested_moments_injection"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 4613
    new-instance v2, Lcom/twitter/model/timeline/ci;

    invoke-direct {v2}, Lcom/twitter/model/timeline/ci;-><init>()V

    .line 4614
    move-object/from16 v0, p4

    invoke-static {p0, v0}, Lcom/twitter/library/api/at;->a(Lcom/fasterxml/jackson/core/JsonParser;Ljava/util/Map;)Lcom/twitter/model/moments/at;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twitter/model/timeline/ci;->a(Lcom/twitter/model/moments/at;)Lcom/twitter/model/timeline/ci;

    move-result-object v2

    move-object v3, v4

    move-object v4, v5

    move-object v5, v8

    move-object v8, v9

    move-object v9, v10

    goto/16 :goto_1

    .line 4615
    :cond_c
    const-string/jumbo v11, "entity_id"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 4616
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 4617
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    .line 4618
    :goto_2
    if-eqz v2, :cond_11

    sget-object v11, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v11, :cond_11

    .line 4619
    sget-object v11, Lcom/fasterxml/jackson/core/JsonToken;->h:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v11, :cond_e

    .line 4620
    const-string/jumbo v2, "type"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 4621
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4635
    :cond_d
    :goto_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    goto :goto_2

    .line 4623
    :cond_e
    sget-object v11, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v11, :cond_10

    .line 4624
    const-string/jumbo v2, "ids"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 4625
    invoke-static {p0}, Lcom/twitter/library/api/at;->az(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/LinkedHashSet;

    move-result-object v2

    .line 4626
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4627
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 4630
    :cond_f
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_3

    .line 4632
    :cond_10
    sget-object v11, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v11, :cond_d

    .line 4633
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_3

    .line 4637
    :cond_11
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v14, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v8

    move-object v8, v9

    move-object v9, v2

    move-object v2, v14

    .line 4638
    goto/16 :goto_1

    :cond_12
    const-string/jumbo v11, "banner"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 4639
    move-object/from16 v0, p2

    invoke-static {p0, v0}, Lcom/twitter/library/api/at;->a(Lcom/fasterxml/jackson/core/JsonParser;Ljava/util/HashMap;)Lcom/twitter/model/core/TwitterSocialProof;

    move-result-object v2

    move-object v4, v5

    move-object v5, v8

    move-object v8, v9

    move-object v9, v10

    move-object v14, v3

    move-object v3, v2

    move-object v2, v14

    goto/16 :goto_1

    .line 4640
    :cond_13
    const-string/jumbo v11, "suggests_info"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 4641
    const-class v2, Lcom/twitter/model/timeline/al;

    invoke-static {p0, v2}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/timeline/al;

    move-object v5, v8

    move-object v8, v9

    move-object v9, v10

    move-object v14, v3

    move-object v3, v4

    move-object v4, v2

    move-object v2, v14

    goto/16 :goto_1

    .line 4642
    :cond_14
    const-string/jumbo v11, "moment"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 4643
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-static {v2, p0, v0}, Lcom/twitter/library/api/at;->a(ILcom/fasterxml/jackson/core/JsonParser;Ljava/util/Map;)Lcom/twitter/model/moments/bg;

    move-result-object v2

    move-object v9, v10

    move-object v14, v4

    move-object v4, v5

    move-object v5, v8

    move-object v8, v2

    move-object v2, v3

    move-object v3, v14

    goto/16 :goto_1

    .line 4645
    :cond_15
    const-string/jumbo v11, "dismiss_info"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 4646
    invoke-static {p0}, Lcom/twitter/library/api/at;->ay(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/timeline/l;

    move-result-object v2

    move-object v8, v9

    move-object v9, v10

    move-object v14, v5

    move-object v5, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v14

    goto/16 :goto_1

    .line 4648
    :cond_16
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v8

    move-object v8, v9

    move-object v9, v10

    .line 4650
    goto/16 :goto_1

    .line 4653
    :pswitch_2
    const-string/jumbo v2, "sort_index"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4654
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v8

    move-object v8, v9

    move-object v9, v10

    goto/16 :goto_1

    .line 4668
    :cond_17
    if-nez v3, :cond_18

    .line 4669
    const/4 v2, 0x0

    .line 4704
    :goto_5
    return-object v2

    .line 4672
    :cond_18
    if-eqz v9, :cond_19

    .line 4673
    invoke-virtual {v3, v9}, Lcom/twitter/model/timeline/az;->a(Lcom/twitter/model/moments/bg;)Lcom/twitter/model/timeline/az;

    .line 4676
    :cond_19
    const-wide/16 v12, 0x0

    cmp-long v2, v6, v12

    if-lez v2, :cond_1a

    .line 4677
    invoke-virtual {v3, v6, v7}, Lcom/twitter/model/timeline/az;->a(J)Lcom/twitter/model/timeline/az;

    .line 4680
    :cond_1a
    if-eqz v4, :cond_1b

    .line 4681
    invoke-virtual {v3, v4}, Lcom/twitter/model/timeline/az;->a(Lcom/twitter/model/core/TwitterSocialProof;)Lcom/twitter/model/timeline/az;

    .line 4684
    :cond_1b
    if-eqz v5, :cond_1c

    .line 4685
    invoke-virtual {v3, v5}, Lcom/twitter/model/timeline/az;->a(Lcom/twitter/model/timeline/al;)Lcom/twitter/model/timeline/az;

    .line 4686
    iget-object v2, v5, Lcom/twitter/model/timeline/al;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/twitter/model/timeline/az;->a(Ljava/lang/String;)Lcom/twitter/model/timeline/az;

    .line 4689
    :cond_1c
    if-eqz v8, :cond_1d

    .line 4690
    invoke-virtual {v3, v8}, Lcom/twitter/model/timeline/az;->a(Lcom/twitter/model/timeline/l;)Lcom/twitter/model/timeline/az;

    .line 4693
    :cond_1d
    if-eqz p5, :cond_1e

    instance-of v2, v3, Lcom/twitter/model/timeline/cf;

    if-eqz v2, :cond_1e

    .line 4694
    invoke-static {v3}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/timeline/cf;

    .line 4695
    invoke-virtual {v2}, Lcom/twitter/model/timeline/cf;->e()Lcom/twitter/model/core/cs;

    move-result-object v2

    .line 4696
    if-eqz v2, :cond_1e

    .line 4697
    invoke-virtual {v2}, Lcom/twitter/model/core/cs;->b()Ljava/lang/String;

    move-result-object v10

    .line 4701
    :cond_1e
    invoke-static {v10}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 4702
    invoke-virtual {v3, v10}, Lcom/twitter/model/timeline/az;->b(Ljava/lang/String;)Lcom/twitter/model/timeline/az;

    .line 4704
    :cond_1f
    invoke-virtual {v3}, Lcom/twitter/model/timeline/az;->r()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/timeline/ay;

    goto :goto_5

    .line 4578
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static b(Lcom/fasterxml/jackson/core/JsonParser;Ljava/util/HashMap;)Lcom/twitter/model/timeline/e;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;)",
            "Lcom/twitter/model/timeline/e;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5583
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    .line 5584
    const/4 v3, 0x0

    .line 5585
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 5587
    const/4 v8, 0x0

    .line 5588
    const-wide/16 v4, 0x0

    .line 5589
    const/4 v6, 0x0

    .line 5590
    :goto_0
    if-eqz v2, :cond_5

    sget-object v9, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v9, :cond_5

    .line 5591
    sget-object v9, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v2

    aget v2, v9, v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :pswitch_0
    move-object v2, v3

    .line 5631
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    move-object/from16 v16, v2

    move-object v2, v3

    move-object/from16 v3, v16

    goto :goto_0

    .line 5593
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    .line 5594
    const-string/jumbo v9, "participants_count"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 5595
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->i()I

    move-result v8

    move-object v2, v3

    goto :goto_1

    .line 5596
    :cond_2
    const-string/jumbo v9, "target_count"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5597
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->i()I

    move-result v6

    move-object v2, v3

    goto :goto_1

    .line 5602
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    .line 5603
    const-string/jumbo v9, "root_user_id"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 5604
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v3

    .line 5605
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/core/TwitterUser;

    .line 5606
    if-nez v2, :cond_1

    .line 5607
    new-instance v9, Lcom/twitter/model/json/common/InvalidJsonFormatException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Root user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v10, " not in users map"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v3}, Lcom/twitter/model/json/common/InvalidJsonFormatException;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lbix;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 5610
    :cond_3
    const-string/jumbo v9, "target_tweet_id"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5611
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object v2, v3

    goto/16 :goto_1

    .line 5616
    :pswitch_3
    const-string/jumbo v2, "participant_ids"

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5617
    invoke-static/range {p0 .. p1}, Lcom/twitter/library/api/at;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v7

    move-object v2, v3

    goto/16 :goto_1

    .line 5619
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    move-object v2, v3

    .line 5621
    goto/16 :goto_1

    .line 5624
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    move-object v2, v3

    .line 5625
    goto/16 :goto_1

    .line 5633
    :cond_5
    if-eqz v3, :cond_7

    .line 5634
    const/4 v9, 0x0

    .line 5635
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/timeline/g;

    .line 5636
    iget-wide v12, v2, Lcom/twitter/model/timeline/g;->b:J

    iget-wide v14, v3, Lcom/twitter/model/core/TwitterUser;->c:J

    cmp-long v2, v12, v14

    if-nez v2, :cond_6

    .line 5637
    const/4 v2, 0x1

    .line 5641
    :goto_2
    if-nez v2, :cond_7

    .line 5642
    const/4 v2, 0x0

    new-instance v9, Lcom/twitter/model/timeline/g;

    invoke-direct {v9, v3}, Lcom/twitter/model/timeline/g;-><init>(Lcom/twitter/model/core/TwitterUser;)V

    invoke-virtual {v7, v2, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5645
    :cond_7
    new-instance v3, Lcom/twitter/model/timeline/e;

    invoke-direct/range {v3 .. v8}, Lcom/twitter/model/timeline/e;-><init>(JILjava/util/List;I)V

    return-object v3

    :cond_8
    move v2, v9

    goto :goto_2

    .line 5591
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static b(Lcom/fasterxml/jackson/core/JsonParser;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/twitter/model/topic/TwitterTopic;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/cs;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;)",
            "Lcom/twitter/model/topic/TwitterTopic;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 608
    const/16 v16, -0x1

    .line 609
    const/4 v4, 0x0

    .line 610
    const-wide/16 v14, 0x0

    .line 611
    const/4 v11, 0x0

    .line 612
    const-wide/16 v12, 0x0

    .line 613
    const/4 v7, 0x0

    .line 614
    const/4 v8, 0x0

    .line 615
    const/4 v9, 0x0

    .line 616
    const/4 v10, 0x0

    .line 617
    const/4 v5, 0x0

    .line 618
    const/4 v6, 0x0

    .line 619
    const/16 v22, 0x0

    .line 620
    const/4 v3, 0x0

    .line 621
    const/16 v20, 0x0

    .line 622
    const/16 v18, 0x0

    .line 623
    const/16 v19, 0x0

    .line 625
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    move-object/from16 v23, v2

    move v2, v3

    move-object v3, v4

    move-object/from16 v4, v23

    .line 626
    :goto_0
    if-eqz v4, :cond_11

    sget-object v17, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    move-object/from16 v0, v17

    if-eq v4, v0, :cond_11

    .line 627
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v17

    .line 628
    sget-object v21, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v4

    aget v4, v21, v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :pswitch_0
    move/from16 v4, v16

    .line 715
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v16

    move-object/from16 v23, v16

    move/from16 v16, v4

    move-object/from16 v4, v23

    .line 716
    goto :goto_0

    .line 630
    :pswitch_1
    const-string/jumbo v4, "seed_hashtag"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 631
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v8

    move/from16 v4, v16

    goto :goto_1

    .line 632
    :cond_2
    const-string/jumbo v4, "image_url"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 633
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v10

    move/from16 v4, v16

    goto :goto_1

    .line 634
    :cond_3
    const-string/jumbo v4, "title"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 635
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v5

    move/from16 v4, v16

    goto :goto_1

    .line 636
    :cond_4
    const-string/jumbo v4, "subtitle"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 637
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v6

    move/from16 v4, v16

    goto :goto_1

    .line 638
    :cond_5
    const-string/jumbo v4, "query"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 639
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v7

    move/from16 v4, v16

    goto :goto_1

    .line 640
    :cond_6
    const-string/jumbo v4, "reason"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 641
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v11

    move/from16 v4, v16

    goto :goto_1

    .line 642
    :cond_7
    const-string/jumbo v4, "view_url"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 643
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v9

    move/from16 v4, v16

    goto/16 :goto_1

    .line 644
    :cond_8
    const-string/jumbo v4, "event_status"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 645
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v22

    move/from16 v4, v16

    goto/16 :goto_1

    .line 650
    :pswitch_2
    const-string/jumbo v4, "tweet_count"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 651
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->j()J

    move-result-wide v12

    move/from16 v4, v16

    goto/16 :goto_1

    .line 652
    :cond_9
    const-string/jumbo v4, "start_time"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 653
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->j()J

    move-result-wide v14

    move/from16 v4, v16

    goto/16 :goto_1

    .line 658
    :pswitch_3
    const-string/jumbo v4, "metadata"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 659
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    move-object/from16 v23, v4

    move/from16 v4, v16

    move-object/from16 v16, v23

    .line 660
    :goto_2
    if-eqz v16, :cond_1

    sget-object v17, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_1

    .line 661
    sget-object v17, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual/range {v16 .. v16}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v16

    aget v16, v17, v16

    packed-switch v16, :pswitch_data_1

    .line 681
    :cond_a
    :goto_3
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v16

    goto :goto_2

    .line 663
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v16

    .line 664
    const-string/jumbo v17, "id"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 665
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 666
    :cond_b
    const-string/jumbo v17, "type"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 668
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->s()Ljava/lang/String;

    move-result-object v4

    .line 667
    invoke-static {v4}, Lcom/twitter/model/topic/TwitterTopic;->c(Ljava/lang/String;)I

    move-result v4

    goto :goto_3

    .line 674
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_3

    .line 683
    :cond_c
    const-string/jumbo v4, "sports_data"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 684
    invoke-static/range {p0 .. p0}, Lcom/twitter/library/api/at;->ae(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/topic/g;

    move-result-object v20

    move/from16 v4, v16

    goto/16 :goto_1

    .line 685
    :cond_d
    const-string/jumbo v4, "promoted_content"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 686
    invoke-static/range {p0 .. p0}, Lcom/twitter/library/api/at;->e(Lcom/fasterxml/jackson/core/JsonParser;)Lcss;

    move-result-object v18

    move/from16 v4, v16

    goto/16 :goto_1

    .line 688
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    move/from16 v4, v16

    .line 690
    goto/16 :goto_1

    .line 693
    :pswitch_7
    const-string/jumbo v4, "tweets"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 694
    if-nez p1, :cond_f

    .line 695
    const-class v4, Lcom/twitter/model/core/cs;

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/twitter/model/json/common/g;->d(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v19

    move/from16 v4, v16

    goto/16 :goto_1

    .line 698
    :cond_f
    invoke-static/range {p0 .. p2}, Lcom/twitter/library/api/at;->a(Lcom/fasterxml/jackson/core/JsonParser;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v19

    move/from16 v4, v16

    goto/16 :goto_1

    .line 701
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    move/from16 v4, v16

    .line 703
    goto/16 :goto_1

    .line 706
    :pswitch_8
    const-string/jumbo v4, "spiking"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 707
    const/4 v2, 0x1

    move/from16 v4, v16

    goto/16 :goto_1

    .line 718
    :cond_11
    const/4 v4, 0x3

    move/from16 v0, v16

    if-ne v0, v4, :cond_13

    const/4 v4, 0x1

    move/from16 v17, v4

    :goto_4
    if-nez v3, :cond_14

    const/4 v4, 0x1

    :goto_5
    and-int v4, v4, v17

    if-eqz v4, :cond_16

    .line 719
    invoke-static {v7}, Lcom/twitter/model/topic/TwitterTopic;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v3

    .line 722
    :goto_6
    const/4 v3, -0x1

    move/from16 v0, v16

    if-eq v0, v3, :cond_12

    invoke-static/range {v17 .. v17}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 723
    invoke-static {v7}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 724
    :cond_12
    new-instance v2, Lcom/twitter/model/json/common/InvalidJsonFormatException;

    const-string/jumbo v3, "Failed parsing event; missing required data"

    invoke-direct {v2, v3}, Lcom/twitter/model/json/common/InvalidJsonFormatException;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 725
    const/4 v3, 0x0

    .line 727
    :goto_7
    return-object v3

    .line 718
    :cond_13
    const/4 v4, 0x0

    move/from16 v17, v4

    goto :goto_4

    :cond_14
    const/4 v4, 0x0

    goto :goto_5

    .line 727
    :cond_15
    new-instance v3, Lcom/twitter/model/topic/TwitterTopic;

    new-instance v4, Lcom/twitter/model/topic/l;

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1, v2}, Lcom/twitter/model/topic/l;-><init>(ILjava/lang/String;Z)V

    const-wide/16 v16, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v3 .. v22}, Lcom/twitter/model/topic/TwitterTopic;-><init>(Lcom/twitter/model/topic/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLcss;Ljava/util/List;Lcom/twitter/model/topic/d;Lcom/twitter/model/core/TwitterUser;Ljava/lang/String;)V

    goto :goto_7

    :cond_16
    move-object/from16 v17, v3

    goto :goto_6

    .line 628
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_8
        :pswitch_2
    .end packed-switch

    .line 661
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x2

    const/4 v6, 0x0

    .line 4240
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4242
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4243
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    .line 4244
    const/4 v4, 0x0

    .line 4245
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4246
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 4247
    const-string/jumbo v1, "errors"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "warnings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4248
    :cond_1
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/json/JSONArray;

    move-object v3, v0

    move v5, v6

    .line 4249
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v5, v1, :cond_0

    .line 4250
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 4251
    const-string/jumbo v4, "eventName"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4252
    new-instance v10, Landroid/util/Pair;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    .line 4253
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v11, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4252
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4249
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    .line 4255
    :cond_2
    const-string/jumbo v1, "logs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4256
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/json/JSONArray;

    move-object v3, v0

    move v5, v6

    .line 4257
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v5, v1, :cond_0

    .line 4258
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 4259
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v2, v13, :cond_4

    .line 4260
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 4261
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4262
    const-string/jumbo v10, "client_event"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 4263
    const-string/jumbo v4, "eventName"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4270
    :cond_3
    :goto_2
    new-instance v10, Landroid/util/Pair;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v11, "]"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x2

    .line 4271
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4270
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object v1, v4

    .line 4257
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move-object v4, v1

    goto :goto_1

    .line 4264
    :cond_5
    const-string/jumbo v10, "perftown"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 4265
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "product"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v10, ":"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v10, "description"

    .line 4266
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 4267
    :cond_6
    const-string/jumbo v10, "client_watch_error"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 4268
    const-string/jumbo v4, "error"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_2

    .line 4276
    :catch_0
    move-exception v1

    .line 4278
    :cond_7
    return-object v7
.end method

.method public static b(Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 379
    :goto_0
    if-eqz v0, :cond_3

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_3

    .line 380
    sget-object v1, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 416
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 382
    :pswitch_1
    const-string/jumbo v0, "phone"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 383
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 384
    :goto_2
    if-eqz v0, :cond_0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    .line 385
    sget-object v1, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    .line 401
    :cond_1
    :goto_3
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2

    .line 387
    :pswitch_3
    const-string/jumbo v0, "verified"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    const/4 v0, 0x1

    .line 418
    :goto_4
    return v0

    .line 394
    :pswitch_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_3

    .line 404
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 409
    :pswitch_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 418
    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    .line 380
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 385
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private static c(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 5049
    if-nez p0, :cond_0

    .line 5063
    :goto_0
    return v0

    .line 5052
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    move v3, v0

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 5054
    goto :goto_0

    .line 5052
    :sswitch_0
    const-string/jumbo v3, "tweet_forward"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v3, "follow_module"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v3, "large_carousel"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :pswitch_1
    move v0, v2

    .line 5057
    goto :goto_0

    .line 5060
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 5052
    nop

    :sswitch_data_0
    .sparse-switch
        0x32c60eba -> :sswitch_1
        0x595c7ef7 -> :sswitch_0
        0x64e149e4 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static c(Lcom/fasterxml/jackson/core/JsonParser;Lcom/twitter/model/core/TwitterUser;)Lbpu;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3839
    invoke-static {p0, p1}, Lcom/twitter/library/api/at;->i(Lcom/fasterxml/jackson/core/JsonParser;Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/library/api/ag;

    move-result-object v0

    .line 3840
    new-instance v1, Lbpu;

    invoke-direct {v1, v0}, Lbpu;-><init>(Lcom/twitter/library/api/ag;)V

    return-object v1
.end method

.method public static c(Lcom/fasterxml/jackson/core/JsonParser;)Lcnc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 430
    const-class v0, Lcnc;

    invoke-static {p0, v0}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcnc;

    return-object v0
.end method

.method private static c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/util/HashMap;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/twitter/model/timeline/g;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5651
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5653
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 5654
    :goto_0
    if-eqz v0, :cond_1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v2, :cond_1

    .line 5655
    sget-object v2, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 5676
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 5657
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v2

    .line 5658
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterUser;

    .line 5659
    if-eqz v0, :cond_0

    .line 5660
    new-instance v2, Lcom/twitter/model/timeline/g;

    invoke-direct {v2, v0}, Lcom/twitter/model/timeline/g;-><init>(Lcom/twitter/model/core/TwitterUser;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5662
    :cond_0
    new-instance v0, Lcom/twitter/model/json/common/InvalidJsonFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Participant "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not in users map"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/twitter/model/json/common/InvalidJsonFormatException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 5669
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 5678
    :cond_1
    return-object v1

    .line 5655
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/cs;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcsz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4372
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 4373
    :cond_0
    new-instance v0, Lcom/twitter/model/json/common/InvalidJsonFormatException;

    const-string/jumbo v1, "Missing tweets map or users map"

    invoke-direct {v0, v1}, Lcom/twitter/model/json/common/InvalidJsonFormatException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 4374
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    .line 4391
    :goto_0
    return-object v0

    .line 4376
    :cond_1
    const-class v0, Lctb;

    invoke-static {p0, v0}, Lcom/twitter/model/json/common/g;->d(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 4377
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lcom/twitter/util/collection/r;->b(I)Lcom/twitter/util/collection/r;

    move-result-object v2

    .line 4378
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lctb;

    .line 4379
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4380
    iget-object v1, v0, Lctb;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 4381
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/twitter/library/api/at;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/twitter/model/core/cs;

    move-result-object v1

    .line 4382
    if-eqz v1, :cond_3

    .line 4383
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4386
    :cond_4
    new-instance v1, Lcta;

    invoke-direct {v1}, Lcta;-><init>()V

    invoke-virtual {v1, v4}, Lcta;->a(Ljava/util/List;)Lcta;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcta;->a(Lctb;)Lcta;

    move-result-object v0

    invoke-virtual {v0}, Lcta;->r()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcsz;

    .line 4387
    if-eqz v0, :cond_2

    .line 4388
    invoke-virtual {v2, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_1

    .line 4391
    :cond_5
    invoke-virtual {v2}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method private static c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/twitter/model/search/g;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 2615
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2616
    const/4 v1, 0x0

    .line 2617
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    .line 2618
    :goto_0
    if-eqz v1, :cond_8

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_8

    .line 2619
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_7

    .line 2620
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 2621
    :goto_1
    if-eqz v1, :cond_6

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_6

    .line 2622
    sget-object v2, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 2676
    :cond_0
    :goto_2
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto :goto_1

    .line 2624
    :pswitch_1
    const-string/jumbo v1, "query"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2625
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 2630
    :pswitch_2
    const-string/jumbo v1, "indices"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2631
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 2632
    :goto_3
    if-eqz v1, :cond_0

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_0

    .line 2635
    sget-object v2, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_1

    :pswitch_3
    move v1, v3

    move v2, v3

    .line 2659
    :cond_1
    :goto_4
    if-le v2, v3, :cond_3

    if-ge v2, v1, :cond_3

    if-eqz v0, :cond_2

    .line 2660
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v1, v4, :cond_3

    .line 2661
    :cond_2
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v6, 0x0

    aput v2, v4, v6

    const/4 v2, 0x1

    aput v1, v4, v2

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2663
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto :goto_3

    .line 2637
    :goto_5
    if-eqz v4, :cond_1

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v4, v6, :cond_1

    .line 2638
    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->i:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v6, :cond_4

    .line 2639
    if-ne v2, v3, :cond_5

    .line 2640
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->i()I

    move-result v2

    .line 2645
    :cond_4
    :goto_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    goto :goto_5

    .line 2642
    :cond_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->i()I

    move-result v1

    goto :goto_6

    .line 2650
    :pswitch_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    move v1, v3

    move v2, v3

    .line 2651
    goto :goto_4

    .line 2669
    :pswitch_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_2

    .line 2678
    :cond_6
    new-instance v1, Lcom/twitter/model/search/g;

    invoke-direct {v1, v0, v5}, Lcom/twitter/model/search/g;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2680
    :cond_7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto/16 :goto_0

    .line 2682
    :cond_8
    return-void

    :pswitch_6
    move v2, v3

    move-object v4, v1

    move v1, v3

    goto :goto_5

    .line 2622
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 2635
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static d(Lcom/fasterxml/jackson/core/JsonParser;Lcom/twitter/model/core/TwitterUser;)Lbmd;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3855
    invoke-static {p0, p1}, Lcom/twitter/library/api/at;->i(Lcom/fasterxml/jackson/core/JsonParser;Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/library/api/ag;

    move-result-object v0

    .line 3856
    new-instance v1, Lbmd;

    invoke-direct {v1, v0}, Lbmd;-><init>(Lcom/twitter/library/api/ag;)V

    return-object v1
.end method

.method public static d(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Long;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 441
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 442
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 443
    :goto_0
    if-eqz v1, :cond_1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_1

    .line 444
    sget-object v2, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 460
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto :goto_0

    .line 446
    :pswitch_1
    const-string/jumbo v1, "media_id_string"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 447
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    .line 453
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 462
    :cond_1
    return-object v0

    .line 444
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static e(Lcom/fasterxml/jackson/core/JsonParser;Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/library/api/ap;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 4011
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v9

    .line 4018
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v4, v0

    move-object v5, v3

    move-object v8, v3

    move-object v1, v3

    move-object v2, v3

    move-object v0, v3

    .line 4019
    :goto_0
    if-eqz v4, :cond_c

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v4, v6, :cond_c

    .line 4020
    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v6, :cond_a

    .line 4021
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v4

    .line 4022
    const-string/jumbo v6, "objects"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 4023
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    move-object v6, v4

    move-object v4, v2

    move-object v2, v1

    move-object v1, v8

    .line 4024
    :goto_1
    if-eqz v6, :cond_10

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v6, v7, :cond_10

    .line 4025
    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v6, v7, :cond_4

    .line 4026
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v6

    .line 4027
    const-string/jumbo v7, "tweets"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4028
    invoke-static {p0, p1}, Lcom/twitter/library/api/at;->f(Lcom/fasterxml/jackson/core/JsonParser;Lcom/twitter/model/core/TwitterUser;)Ljava/util/HashMap;

    move-result-object v2

    .line 4039
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    goto :goto_1

    .line 4029
    :cond_1
    const-string/jumbo v7, "users"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4030
    invoke-static {p0}, Lcom/twitter/library/api/at;->N(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/HashMap;

    move-result-object v4

    goto :goto_2

    .line 4031
    :cond_2
    const-string/jumbo v7, "timelines"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4032
    invoke-static {p0}, Lcom/twitter/library/api/at;->ax(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/HashMap;

    move-result-object v1

    goto :goto_2

    .line 4034
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_2

    .line 4036
    :cond_4
    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v6, v7, :cond_0

    .line 4037
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_2

    .line 4041
    :cond_5
    const-string/jumbo v6, "response"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 4042
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    move-object v6, v0

    move-object v7, v5

    move-object v0, v4

    .line 4043
    :goto_3
    if-eqz v0, :cond_f

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v4, :cond_f

    .line 4044
    sget-object v4, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_0

    .line 4073
    :cond_6
    :goto_4
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_3

    .line 4046
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v0

    .line 4047
    const-string/jumbo v4, "timeline_id"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4048
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 4053
    :pswitch_2
    const-string/jumbo v0, "timeline"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4054
    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/twitter/library/api/at;->a(Lcom/fasterxml/jackson/core/JsonParser;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Iterable;)Lcom/twitter/util/collection/r;

    goto :goto_4

    .line 4057
    :cond_7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_4

    .line 4062
    :pswitch_3
    const-string/jumbo v0, "position"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4063
    invoke-static {p0}, Lcom/twitter/library/api/at;->M(Lcom/fasterxml/jackson/core/JsonParser;)Landroid/util/Pair;

    move-result-object v7

    goto :goto_4

    .line 4065
    :cond_8
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_4

    .line 4076
    :cond_9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    move-object v4, v1

    move-object v1, v5

    move-object v5, v2

    move-object v2, v8

    .line 4081
    :goto_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    move-object v8, v2

    move-object v2, v5

    move-object v5, v1

    move-object v1, v4

    move-object v4, v6

    goto/16 :goto_0

    .line 4078
    :cond_a
    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v6, :cond_b

    .line 4079
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    :cond_b
    move-object v4, v1

    move-object v1, v5

    move-object v5, v2

    move-object v2, v8

    goto :goto_5

    .line 4086
    :cond_c
    if-eqz v8, :cond_e

    if-eqz v2, :cond_e

    .line 4087
    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/topic/TwitterTopic;

    .line 4088
    if-eqz v0, :cond_d

    .line 4089
    invoke-virtual {v0}, Lcom/twitter/model/topic/TwitterTopic;->o()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/core/TwitterUser;

    move-object v2, v1

    move-object v1, v0

    .line 4097
    :goto_6
    new-instance v0, Lcom/twitter/library/api/ap;

    invoke-virtual {v9}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iget-object v4, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/twitter/library/api/ap;-><init>(Lcom/twitter/model/topic/TwitterTopic;Lcom/twitter/model/core/TwitterUser;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_d
    move-object v2, v3

    move-object v1, v0

    .line 4091
    goto :goto_6

    :cond_e
    move-object v2, v3

    move-object v1, v3

    .line 4095
    goto :goto_6

    :cond_f
    move-object v0, v6

    move-object v4, v1

    move-object v5, v2

    move-object v1, v7

    move-object v2, v8

    goto :goto_5

    :cond_10
    move-object v10, v5

    move-object v5, v4

    move-object v4, v2

    move-object v2, v1

    move-object v1, v10

    goto :goto_5

    .line 4044
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static e(Lcom/fasterxml/jackson/core/JsonParser;)Lcss;
    .locals 1

    .prologue
    .line 764
    const-class v0, Lcss;

    invoke-static {p0, v0}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcss;

    .line 765
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcss;->b:Lcss;

    goto :goto_0
.end method

.method public static f(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/library/api/ClientConfiguration;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 770
    .line 772
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v2, v0

    move-object v0, v1

    .line 774
    :goto_0
    if-eqz v2, :cond_2

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_2

    .line 775
    sget-object v3, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 795
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    goto :goto_0

    .line 777
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    .line 778
    const-string/jumbo v3, "access"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 779
    invoke-static {p0}, Lcom/twitter/library/api/at;->at(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/library/api/al;

    move-result-object v1

    goto :goto_1

    .line 780
    :cond_0
    const-string/jumbo v3, "twitter"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 781
    const-class v0, Lcom/twitter/model/client/UrlConfiguration;

    invoke-static {p0, v0}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/client/UrlConfiguration;

    goto :goto_1

    .line 783
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 788
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 797
    :cond_2
    new-instance v2, Lcom/twitter/library/api/ClientConfiguration;

    invoke-direct {v2, v0, v1}, Lcom/twitter/library/api/ClientConfiguration;-><init>(Lcom/twitter/model/client/UrlConfiguration;Lcom/twitter/library/api/al;)V

    return-object v2

    .line 775
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static f(Lcom/fasterxml/jackson/core/JsonParser;Lcom/twitter/model/core/TwitterUser;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/twitter/model/core/TwitterUser;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/core/cs;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4283
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4284
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 4285
    :goto_0
    if-eqz v0, :cond_3

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v2, :cond_3

    .line 4286
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_2

    .line 4287
    const-class v0, Lcom/twitter/model/core/ct;

    invoke-static {p0, v0}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/ct;

    .line 4288
    if-eqz v0, :cond_1

    .line 4289
    invoke-virtual {v0, p1}, Lcom/twitter/model/core/ct;->a(Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/model/core/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/core/ct;->r()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cs;

    .line 4290
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4294
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 4289
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 4291
    :cond_2
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_0

    .line 4292
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_2

    .line 4296
    :cond_3
    return-object v1
.end method

.method private static g(Lcom/fasterxml/jackson/core/JsonParser;Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/library/api/search/i;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2198
    const/16 v16, 0x0

    .line 2199
    const/4 v4, 0x0

    .line 2200
    const/4 v15, 0x0

    .line 2201
    const/4 v6, 0x0

    .line 2202
    const/4 v7, 0x0

    .line 2203
    const/4 v8, 0x0

    .line 2204
    const/4 v9, 0x0

    .line 2205
    const/4 v12, 0x0

    .line 2206
    const/4 v10, 0x0

    .line 2207
    const/4 v11, 0x0

    .line 2208
    const/16 v17, 0x0

    .line 2209
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2210
    const/4 v14, 0x0

    .line 2212
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    .line 2213
    sget-object v3, Lcom/twitter/library/api/at;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2215
    if-eqz v2, :cond_1

    .line 2216
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2222
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    .line 2223
    :goto_0
    if-eqz v2, :cond_e

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v5, :cond_e

    .line 2224
    sget-object v5, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v2

    aget v2, v5, v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :pswitch_0
    move-object v2, v12

    move-object v5, v4

    move-object v4, v15

    move-object/from16 v12, v16

    .line 2366
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v15

    move-object/from16 v16, v12

    move-object v12, v2

    move-object v2, v15

    move-object v15, v4

    move-object v4, v5

    goto :goto_0

    .line 2218
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    .line 2219
    const/4 v2, 0x0

    .line 2442
    :goto_2
    return-object v2

    .line 2226
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    .line 2227
    const-string/jumbo v5, "metadata"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2228
    packed-switch v3, :pswitch_data_1

    .line 2245
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    move-object v2, v12

    move-object v5, v4

    move-object v4, v15

    move-object/from16 v12, v16

    .line 2246
    goto :goto_1

    .line 2234
    :pswitch_3
    const-class v2, Lcom/twitter/model/search/m;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/search/m;

    .line 2235
    if-eqz v2, :cond_17

    const-string/jumbo v5, "top"

    iget-object v0, v2, Lcom/twitter/model/search/m;->e:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 2236
    const-string/jumbo v5, "popular"

    iput-object v5, v2, Lcom/twitter/model/search/m;->e:Ljava/lang/String;

    move-object v5, v4

    move-object v4, v15

    move-object/from16 v19, v12

    move-object v12, v2

    move-object/from16 v2, v19

    goto :goto_1

    .line 2241
    :pswitch_4
    invoke-static/range {p0 .. p0}, Lcom/twitter/library/api/at;->y(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/search/TwitterUserMetadata;

    move-result-object v2

    move-object v5, v4

    move-object/from16 v12, v16

    move-object v4, v15

    .line 2242
    goto :goto_1

    .line 2249
    :cond_2
    const-string/jumbo v5, "data"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2250
    packed-switch v3, :pswitch_data_2

    .line 2333
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    move-object v2, v12

    move-object v5, v4

    move-object v4, v15

    move-object/from16 v12, v16

    .line 2334
    goto :goto_1

    .line 2253
    :pswitch_6
    const-class v2, Lcom/twitter/model/json/core/JsonTwitterStatus;

    .line 2254
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/json/core/JsonTwitterStatus;

    .line 2255
    if-eqz v2, :cond_0

    .line 2256
    if-eqz v16, :cond_3

    .line 2257
    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/twitter/model/json/core/JsonTwitterStatus;->F:Lcom/twitter/model/search/m;

    .line 2259
    :cond_3
    invoke-virtual {v2}, Lcom/twitter/model/json/core/JsonTwitterStatus;->a()Lcom/twitter/model/core/ct;

    move-result-object v2

    .line 2260
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/twitter/model/core/ct;->a(Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/model/core/ct;

    .line 2261
    invoke-virtual {v2}, Lcom/twitter/model/core/ct;->r()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/core/cs;

    .line 2262
    if-eqz v2, :cond_4

    iget-object v4, v2, Lcom/twitter/model/core/cs;->K:Lcom/twitter/model/search/m;

    if-eqz v4, :cond_4

    .line 2263
    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 2264
    iget-object v4, v2, Lcom/twitter/model/core/cs;->K:Lcom/twitter/model/search/m;

    const-string/jumbo v5, "news"

    iput-object v5, v4, Lcom/twitter/model/search/m;->e:Ljava/lang/String;

    :cond_4
    :goto_3
    move-object v4, v15

    move-object v5, v2

    move-object v2, v12

    move-object/from16 v12, v16

    .line 2272
    goto/16 :goto_1

    .line 2265
    :cond_5
    iget-object v4, v2, Lcom/twitter/model/core/cs;->K:Lcom/twitter/model/search/m;

    iget-object v4, v4, Lcom/twitter/model/search/m;->d:Lcom/twitter/model/search/d;

    if-eqz v4, :cond_4

    .line 2266
    const/16 v4, 0x9

    .line 2268
    iget-object v5, v2, Lcom/twitter/model/core/cs;->K:Lcom/twitter/model/search/m;

    new-instance v3, Lcom/twitter/model/core/cq;

    invoke-direct {v3}, Lcom/twitter/model/core/cq;-><init>()V

    const/16 v18, 0x17

    .line 2269
    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/twitter/model/core/cq;->a(I)Lcom/twitter/model/core/cq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/model/core/cq;->q()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/model/core/TwitterSocialProof;

    iput-object v3, v5, Lcom/twitter/model/search/m;->f:Lcom/twitter/model/core/TwitterSocialProof;

    move v3, v4

    goto :goto_3

    .line 2276
    :pswitch_7
    const-class v2, Lcom/twitter/model/core/cv;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/core/cv;

    move-object v5, v4

    move-object v4, v2

    move-object v2, v12

    move-object/from16 v12, v16

    .line 2277
    goto/16 :goto_1

    .line 2280
    :pswitch_8
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 2281
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/twitter/library/api/at;->b(Lcom/fasterxml/jackson/core/JsonParser;Ljava/util/ArrayList;)I

    move-result v5

    .line 2282
    const/4 v2, -0x1

    if-eq v5, v2, :cond_0

    .line 2284
    packed-switch v5, :pswitch_data_3

    move v3, v5

    move-object v2, v12

    move-object v5, v4

    move-object/from16 v12, v16

    move-object v4, v15

    .line 2300
    goto/16 :goto_1

    .line 2286
    :pswitch_9
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v8, v2, [Ljava/lang/String;

    .line 2287
    const/4 v2, 0x0

    .line 2288
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move v3, v2

    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/search/g;

    .line 2289
    iget-object v2, v2, Lcom/twitter/model/search/g;->b:Ljava/lang/String;

    aput-object v2, v8, v3

    .line 2290
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .line 2291
    goto :goto_4

    :cond_6
    move v3, v5

    move-object v2, v12

    move-object v5, v4

    move-object/from16 v12, v16

    move-object v4, v15

    .line 2293
    goto/16 :goto_1

    .line 2296
    :pswitch_a
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/search/g;

    move v3, v5

    move-object v7, v2

    move-object v2, v12

    move-object v5, v4

    move-object v4, v15

    move-object/from16 v12, v16

    .line 2297
    goto/16 :goto_1

    .line 2307
    :pswitch_b
    invoke-static/range {p0 .. p0}, Lcom/twitter/library/api/at;->w(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/search/j;

    move-result-object v11

    .line 2308
    if-eqz v11, :cond_0

    .line 2309
    iget-object v6, v11, Lcom/twitter/model/search/j;->e:Ljava/util/ArrayList;

    move-object v2, v12

    move-object v5, v4

    move-object v4, v15

    move-object/from16 v12, v16

    goto/16 :goto_1

    .line 2314
    :pswitch_c
    invoke-static/range {p0 .. p0}, Lcom/twitter/library/api/at;->al(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/List;

    move-result-object v6

    move-object v2, v12

    move-object v5, v4

    move-object v4, v15

    move-object/from16 v12, v16

    .line 2315
    goto/16 :goto_1

    .line 2319
    :pswitch_d
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v5}, Lcom/twitter/library/api/at;->b(Lcom/fasterxml/jackson/core/JsonParser;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/twitter/model/topic/TwitterTopic;

    move-result-object v2

    .line 2320
    if-nez v2, :cond_7

    .line 2321
    new-instance v2, Lcom/twitter/model/json/common/InvalidJsonFormatException;

    const-string/jumbo v3, "Search with null or empty event"

    invoke-direct {v2, v3}, Lcom/twitter/model/json/common/InvalidJsonFormatException;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 2323
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 2325
    :cond_7
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2327
    const/16 v2, 0xd

    if-ne v3, v2, :cond_0

    .line 2328
    const/4 v14, 0x1

    move-object v2, v12

    move-object v5, v4

    move-object v4, v15

    move-object/from16 v12, v16

    goto/16 :goto_1

    .line 2337
    :cond_8
    const-string/jumbo v5, "filter"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2338
    const/16 v2, 0xa

    if-ne v3, v2, :cond_9

    .line 2339
    invoke-static/range {p0 .. p0}, Lcom/twitter/library/api/at;->am(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/search/a;

    move-result-object v10

    move-object v2, v12

    move-object v5, v4

    move-object v4, v15

    move-object/from16 v12, v16

    goto/16 :goto_1

    .line 2341
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    move-object v2, v12

    move-object v5, v4

    move-object v4, v15

    move-object/from16 v12, v16

    goto/16 :goto_1

    .line 2344
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    move-object v2, v12

    move-object v5, v4

    move-object v4, v15

    move-object/from16 v12, v16

    .line 2346
    goto/16 :goto_1

    .line 2349
    :pswitch_e
    const-string/jumbo v2, "data"

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2350
    const/4 v2, 0x6

    if-ne v3, v2, :cond_b

    .line 2351
    invoke-static/range {p0 .. p0}, Lcom/twitter/library/api/at;->x(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/List;

    move-result-object v9

    move-object v2, v12

    move-object v5, v4

    move-object v4, v15

    move-object/from16 v12, v16

    goto/16 :goto_1

    .line 2352
    :cond_b
    const/16 v2, 0xa

    if-ne v3, v2, :cond_c

    .line 2353
    const-class v2, Lcom/twitter/model/core/cs;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/twitter/model/json/common/g;->d(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    move-object v2, v12

    move-object v5, v4

    move-object v4, v15

    move-object/from16 v12, v16

    goto/16 :goto_1

    .line 2355
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    move-object v2, v12

    move-object v5, v4

    move-object v4, v15

    move-object/from16 v12, v16

    goto/16 :goto_1

    .line 2358
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    move-object v2, v12

    move-object v5, v4

    move-object v4, v15

    move-object/from16 v12, v16

    .line 2360
    goto/16 :goto_1

    .line 2369
    :cond_e
    const/4 v5, 0x0

    .line 2370
    packed-switch v3, :pswitch_data_4

    :cond_f
    :pswitch_f
    move/from16 v12, v17

    .line 2442
    :goto_5
    new-instance v2, Lcom/twitter/library/api/search/i;

    invoke-direct/range {v2 .. v14}, Lcom/twitter/library/api/search/i;-><init>(ILcom/twitter/model/core/cs;Lcom/twitter/model/core/TwitterUser;Ljava/util/List;Lcom/twitter/model/search/g;[Ljava/lang/String;Ljava/util/List;Lcom/twitter/model/search/a;Lcom/twitter/model/search/j;ZLjava/util/List;Z)V

    goto/16 :goto_2

    .line 2374
    :pswitch_10
    if-nez v4, :cond_10

    .line 2375
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 2377
    :cond_10
    invoke-virtual {v4}, Lcom/twitter/model/core/cs;->f()Z

    move-result v12

    goto :goto_5

    .line 2381
    :pswitch_11
    if-nez v15, :cond_11

    .line 2382
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 2383
    :cond_11
    if-eqz v12, :cond_12

    .line 2384
    invoke-virtual {v15, v12}, Lcom/twitter/model/core/cv;->a(Lcom/twitter/model/search/TwitterUserMetadata;)Lcom/twitter/model/core/cv;

    .line 2385
    iget-object v2, v12, Lcom/twitter/model/search/TwitterUserMetadata;->a:Lcom/twitter/model/core/TwitterSocialProof;

    if-eqz v2, :cond_12

    .line 2386
    invoke-virtual {v15}, Lcom/twitter/model/core/cv;->g()I

    move-result v2

    iget-object v5, v12, Lcom/twitter/model/search/TwitterUserMetadata;->a:Lcom/twitter/model/core/TwitterSocialProof;

    iget v5, v5, Lcom/twitter/model/core/TwitterSocialProof;->g:I

    invoke-static {v2, v5}, Lcom/twitter/model/core/p;->a(II)I

    move-result v2

    invoke-virtual {v15, v2}, Lcom/twitter/model/core/cv;->i(I)Lcom/twitter/model/core/cv;

    .line 2390
    :cond_12
    invoke-virtual {v15}, Lcom/twitter/model/core/cv;->r()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/core/TwitterUser;

    .line 2391
    if-nez v2, :cond_16

    .line 2392
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 2397
    :pswitch_12
    if-nez v7, :cond_f

    .line 2398
    new-instance v2, Lcom/twitter/model/json/common/InvalidJsonFormatException;

    const-string/jumbo v3, "Search with null spelling suggestions."

    invoke-direct {v2, v3}, Lcom/twitter/model/json/common/InvalidJsonFormatException;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 2399
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 2404
    :pswitch_13
    if-eqz v8, :cond_13

    array-length v2, v8

    if-nez v2, :cond_f

    .line 2405
    :cond_13
    new-instance v2, Lcom/twitter/model/json/common/InvalidJsonFormatException;

    const-string/jumbo v3, "Search with null or empty related."

    invoke-direct {v2, v3}, Lcom/twitter/model/json/common/InvalidJsonFormatException;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 2406
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 2411
    :pswitch_14
    if-nez v11, :cond_f

    .line 2412
    new-instance v2, Lcom/twitter/model/json/common/InvalidJsonFormatException;

    const-string/jumbo v3, "Search with null or empty summary."

    invoke-direct {v2, v3}, Lcom/twitter/model/json/common/InvalidJsonFormatException;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 2413
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 2418
    :pswitch_15
    if-nez v9, :cond_f

    .line 2419
    new-instance v2, Lcom/twitter/model/json/common/InvalidJsonFormatException;

    const-string/jumbo v3, "Search with null or empty user gallery."

    invoke-direct {v2, v3}, Lcom/twitter/model/json/common/InvalidJsonFormatException;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 2420
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 2426
    :pswitch_16
    if-eqz v6, :cond_14

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2427
    :cond_14
    new-instance v2, Lcom/twitter/model/json/common/InvalidJsonFormatException;

    const-string/jumbo v3, "Search with null or empty tweet/media gallery."

    invoke-direct {v2, v3}, Lcom/twitter/model/json/common/InvalidJsonFormatException;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 2428
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 2430
    :cond_15
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/model/core/cs;

    .line 2431
    if-eqz v2, :cond_f

    iget-object v12, v2, Lcom/twitter/model/core/cs;->K:Lcom/twitter/model/search/m;

    if-eqz v12, :cond_f

    if-eqz v16, :cond_f

    .line 2432
    iget-object v12, v2, Lcom/twitter/model/core/cs;->K:Lcom/twitter/model/search/m;

    move-object/from16 v0, v16

    iget-object v15, v0, Lcom/twitter/model/search/m;->g:Ljava/lang/String;

    iput-object v15, v12, Lcom/twitter/model/search/m;->g:Ljava/lang/String;

    .line 2433
    iget-object v2, v2, Lcom/twitter/model/core/cs;->K:Lcom/twitter/model/search/m;

    move-object/from16 v0, v16

    iget-object v12, v0, Lcom/twitter/model/search/m;->h:Ljava/lang/String;

    iput-object v12, v2, Lcom/twitter/model/search/m;->h:Ljava/lang/String;

    move/from16 v12, v17

    goto/16 :goto_5

    :cond_16
    move-object v5, v2

    move/from16 v12, v17

    goto/16 :goto_5

    :cond_17
    move-object v5, v4

    move-object v4, v15

    move-object/from16 v19, v12

    move-object v12, v2

    move-object/from16 v2, v19

    goto/16 :goto_1

    .line 2224
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2228
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 2250
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_c
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_d
        :pswitch_b
        :pswitch_d
    .end packed-switch

    .line 2284
    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_a
        :pswitch_9
    .end packed-switch

    .line 2370
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_10
        :pswitch_f
        :pswitch_15
        :pswitch_16
        :pswitch_f
        :pswitch_10
        :pswitch_16
        :pswitch_f
        :pswitch_14
    .end packed-switch
.end method

.method public static g(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 894
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 895
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 896
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_0

    .line 897
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 898
    :goto_0
    if-eqz v0, :cond_0

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v2, :cond_0

    .line 899
    sget-object v2, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 912
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 901
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 905
    :pswitch_2
    invoke-static {p0}, Lcom/twitter/library/api/at;->ag(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 915
    :cond_0
    return-object v1

    .line 899
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static h(Lcom/fasterxml/jackson/core/JsonParser;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 926
    const/4 v2, 0x0

    .line 927
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 928
    const/4 v0, 0x0

    move-object v4, v1

    move v1, v2

    move-object v2, v4

    .line 929
    :goto_0
    if-eqz v2, :cond_3

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_3

    .line 930
    sget-object v3, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 971
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    goto :goto_0

    .line 932
    :pswitch_0
    const-string/jumbo v2, "relationship"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 933
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    .line 934
    :goto_2
    if-eqz v2, :cond_0

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_0

    .line 935
    sget-object v3, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_1

    .line 954
    :goto_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    goto :goto_2

    .line 937
    :pswitch_1
    const-string/jumbo v2, "source"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 938
    invoke-static {p0}, Lcom/twitter/library/api/at;->ah(Lcom/fasterxml/jackson/core/JsonParser;)I

    move-result v1

    goto :goto_3

    .line 940
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_3

    .line 946
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 957
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 963
    :pswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 973
    :cond_3
    return v1

    .line 930
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 935
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static h(Lcom/fasterxml/jackson/core/JsonParser;Lcom/twitter/model/core/TwitterUser;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/twitter/model/core/TwitterUser;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/twitter/library/api/search/i;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2448
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2449
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 2450
    :goto_0
    if-eqz v0, :cond_2

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v2, :cond_2

    .line 2451
    sget-object v2, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 2484
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 2453
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 2454
    :goto_2
    if-eqz v0, :cond_0

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v2, :cond_0

    .line 2455
    sget-object v2, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_1

    .line 2472
    :cond_1
    :goto_3
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2

    .line 2458
    :pswitch_3
    invoke-static {p0, p1}, Lcom/twitter/library/api/at;->g(Lcom/fasterxml/jackson/core/JsonParser;Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/library/api/search/i;

    move-result-object v0

    .line 2459
    if-eqz v0, :cond_1

    .line 2460
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2465
    :pswitch_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_3

    .line 2477
    :pswitch_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 2487
    :cond_2
    return-object v1

    .line 2451
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2455
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static i(Lcom/fasterxml/jackson/core/JsonParser;Lcom/twitter/model/core/TwitterUser;)Lcom/twitter/library/api/ag;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3711
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v13

    .line 3712
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v14

    .line 3713
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 3714
    const/4 v5, 0x0

    .line 3715
    const/4 v3, 0x0

    .line 3716
    const/4 v2, 0x0

    .line 3717
    const/4 v11, 0x0

    .line 3718
    const/4 v9, 0x0

    .line 3719
    const/4 v10, 0x0

    .line 3720
    const-string/jumbo v8, ""

    .line 3721
    const/4 v7, 0x0

    .line 3722
    const/4 v6, 0x0

    .line 3723
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 3726
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 3727
    :goto_0
    if-eqz v1, :cond_18

    sget-object v12, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v12, :cond_18

    .line 3728
    sget-object v12, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v12, :cond_16

    .line 3729
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v1

    .line 3730
    const-string/jumbo v12, "twitter_objects"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 3731
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 3732
    :goto_1
    if-eqz v1, :cond_17

    sget-object v12, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v12, :cond_17

    .line 3733
    sget-object v12, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v12, :cond_7

    .line 3734
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v1

    .line 3735
    const-string/jumbo v12, "tweets"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 3736
    invoke-static/range {p0 .. p1}, Lcom/twitter/library/api/at;->f(Lcom/fasterxml/jackson/core/JsonParser;Lcom/twitter/model/core/TwitterUser;)Ljava/util/HashMap;

    move-result-object v2

    .line 3757
    :cond_0
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto :goto_1

    .line 3737
    :cond_1
    const-string/jumbo v12, "users"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 3738
    invoke-static/range {p0 .. p0}, Lcom/twitter/library/api/at;->N(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/HashMap;

    move-result-object v3

    goto :goto_2

    .line 3739
    :cond_2
    const-string/jumbo v12, "event_summaries"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 3740
    move-object/from16 v0, p0

    invoke-static {v2, v3, v0}, Lcom/twitter/library/api/at;->a(Ljava/util/HashMap;Ljava/util/HashMap;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_2

    .line 3742
    :cond_3
    const-string/jumbo v12, "custom_timelines"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 3743
    invoke-static/range {p0 .. p0}, Lcom/twitter/library/api/at;->ax(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_2

    .line 3744
    :cond_4
    const-string/jumbo v12, "moments"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 3745
    const-class v1, Lcom/twitter/model/moments/ad;

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/twitter/model/json/common/g;->e(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/model/json/common/j;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    goto :goto_2

    .line 3747
    :cond_5
    const-string/jumbo v12, "events"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3748
    const-class v1, Lcom/twitter/model/livevideo/d;

    .line 3749
    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/twitter/model/json/common/g;->e(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    .line 3750
    invoke-interface {v15, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_2

    .line 3752
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_2

    .line 3754
    :cond_7
    sget-object v12, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v12, :cond_0

    .line 3755
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_2

    .line 3759
    :cond_8
    const-string/jumbo v12, "response"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 3760
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    move-object v12, v11

    move-object v11, v9

    move-object v9, v8

    move v8, v7

    move v7, v6

    .line 3761
    :goto_3
    if-eqz v1, :cond_1a

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v6, :cond_1a

    .line 3762
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->g()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 3763
    const-string/jumbo v1, "start_at_top"

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3764
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->m()Z

    move-result v7

    .line 3794
    :cond_9
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto :goto_3

    .line 3766
    :cond_a
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->c()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 3767
    const-string/jumbo v1, "refresh_rate_seconds"

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3768
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->h()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v8

    goto :goto_4

    .line 3770
    :cond_b
    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v6, :cond_11

    .line 3771
    const-string/jumbo v1, "notifications"

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3772
    const-class v1, Lcom/twitter/model/timeline/br;

    .line 3773
    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/twitter/model/json/common/g;->d(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    .line 3774
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    const/4 v12, 0x1

    if-ne v1, v12, :cond_d

    :cond_c
    const/4 v1, 0x1

    :goto_5
    invoke-static {v1}, Lcom/twitter/util/h;->b(Z)Z

    .line 3775
    invoke-static {v6}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/timeline/br;

    move-object v12, v1

    .line 3776
    goto :goto_4

    .line 3774
    :cond_d
    const/4 v1, 0x0

    goto :goto_5

    .line 3776
    :cond_e
    const-string/jumbo v1, "timeline"

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3777
    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/twitter/library/api/at;->a(Lcom/fasterxml/jackson/core/JsonParser;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Iterable;)Lcom/twitter/util/collection/r;

    goto :goto_4

    .line 3779
    :cond_f
    const-string/jumbo v1, "ads"

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3780
    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/twitter/library/api/at;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Iterable;)Lcom/twitter/util/collection/r;

    goto/16 :goto_4

    .line 3782
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_4

    .line 3784
    :cond_11
    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v6, :cond_9

    .line 3785
    const-string/jumbo v1, "cursor"

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3786
    const-class v1, Lcom/twitter/model/timeline/ai;

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/timeline/ai;

    move-object v11, v1

    goto/16 :goto_4

    .line 3788
    :cond_12
    const-string/jumbo v1, "event"

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 3789
    invoke-static/range {p0 .. p0}, Lcom/twitter/library/api/at;->av(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_4

    .line 3791
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_4

    .line 3796
    :cond_14
    const-string/jumbo v12, "alert"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 3797
    const-class v1, Lcom/twitter/model/json/alerts/JsonAlert;

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/json/alerts/JsonAlert;

    move-object v10, v5

    move-object v5, v1

    move v1, v6

    move-object v6, v9

    move-object v9, v3

    move-object v3, v8

    move-object v8, v2

    move v2, v7

    move-object v7, v11

    .line 3804
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v11

    move-object/from16 v16, v11

    move-object v11, v7

    move v7, v2

    move-object v2, v8

    move-object v8, v3

    move-object v3, v9

    move-object v9, v6

    move v6, v1

    move-object/from16 v1, v16

    move-object/from16 v17, v5

    move-object v5, v10

    move-object/from16 v10, v17

    goto/16 :goto_0

    .line 3799
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    move v1, v6

    move-object v6, v9

    move-object v9, v3

    move-object v3, v8

    move-object v8, v2

    move v2, v7

    move-object v7, v11

    move-object/from16 v16, v10

    move-object v10, v5

    move-object/from16 v5, v16

    goto :goto_6

    .line 3801
    :cond_16
    sget-object v12, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v12, :cond_17

    .line 3802
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    :cond_17
    move v1, v6

    move-object v6, v9

    move-object v9, v3

    move-object v3, v8

    move-object v8, v2

    move v2, v7

    move-object v7, v11

    move-object/from16 v16, v10

    move-object v10, v5

    move-object/from16 v5, v16

    goto :goto_6

    .line 3807
    :cond_18
    if-nez v10, :cond_19

    const/4 v1, 0x0

    move-object v3, v1

    .line 3808
    :goto_7
    invoke-interface {v15, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/livevideo/d;

    .line 3810
    new-instance v4, Lcom/twitter/library/api/ah;

    invoke-direct {v4}, Lcom/twitter/library/api/ah;-><init>()V

    .line 3811
    invoke-virtual {v13}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v4, v2}, Lcom/twitter/library/api/ah;->a(Ljava/util/List;)Lcom/twitter/library/api/ah;

    move-result-object v2

    .line 3812
    invoke-virtual {v2, v9}, Lcom/twitter/library/api/ah;->a(Lcom/twitter/model/timeline/ai;)Lcom/twitter/library/api/ah;

    move-result-object v4

    .line 3813
    invoke-virtual {v14}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v4, v2}, Lcom/twitter/library/api/ah;->b(Ljava/util/List;)Lcom/twitter/library/api/ah;

    move-result-object v2

    .line 3814
    invoke-virtual {v2, v3}, Lcom/twitter/library/api/ah;->a(Lclh;)Lcom/twitter/library/api/ah;

    move-result-object v2

    .line 3815
    invoke-virtual {v2, v11}, Lcom/twitter/library/api/ah;->a(Lcom/twitter/model/timeline/br;)Lcom/twitter/library/api/ah;

    move-result-object v2

    .line 3816
    invoke-virtual {v2, v1}, Lcom/twitter/library/api/ah;->a(Lcom/twitter/model/livevideo/d;)Lcom/twitter/library/api/ah;

    move-result-object v1

    .line 3817
    invoke-virtual {v1, v6}, Lcom/twitter/library/api/ah;->a(Z)Lcom/twitter/library/api/ah;

    move-result-object v1

    .line 3818
    invoke-virtual {v1, v7}, Lcom/twitter/library/api/ah;->a(I)Lcom/twitter/library/api/ah;

    move-result-object v1

    .line 3819
    invoke-virtual {v1}, Lcom/twitter/library/api/ah;->q()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/api/ag;

    .line 3810
    return-object v1

    .line 3807
    :cond_19
    invoke-virtual {v10}, Lcom/twitter/model/json/alerts/JsonAlert;->a()Lcli;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcli;->a(Ljava/util/Map;)Lcli;

    move-result-object v1

    invoke-virtual {v1}, Lcli;->q()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lclh;

    move-object v3, v1

    goto :goto_7

    :cond_1a
    move v1, v7

    move-object v6, v11

    move-object v7, v12

    move-object/from16 v16, v10

    move-object v10, v5

    move-object/from16 v5, v16

    move-object/from16 v17, v9

    move-object v9, v3

    move-object/from16 v3, v17

    move-object/from16 v18, v2

    move v2, v8

    move-object/from16 v8, v18

    goto/16 :goto_6
.end method

.method public static i(Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1044
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 1046
    :goto_0
    if-eqz v0, :cond_1

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_1

    .line 1047
    sget-object v1, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1060
    :cond_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 1050
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v0

    .line 1051
    const-string/jumbo v1, "saved"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1052
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->m()Z

    move-result v0

    .line 1062
    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1047
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static j(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1074
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 1076
    :goto_0
    if-eqz v0, :cond_1

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_1

    .line 1077
    sget-object v1, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1089
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 1079
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v0

    .line 1080
    const-string/jumbo v1, "status"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1081
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    .line 1091
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1077
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static k(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1102
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v2, v0

    move-object v0, v1

    .line 1104
    :goto_0
    if-eqz v2, :cond_3

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_3

    .line 1105
    sget-object v3, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 1146
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    goto :goto_0

    .line 1107
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1111
    :pswitch_2
    const-string/jumbo v2, "promotion_destination_url"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1112
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    .line 1113
    :goto_2
    if-eqz v2, :cond_0

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v3, :cond_0

    .line 1114
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v0

    .line 1115
    sget-object v3, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_1

    .line 1131
    :cond_1
    :goto_3
    :pswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    goto :goto_2

    .line 1117
    :pswitch_4
    const-string/jumbo v2, "string_value"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1118
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    .line 1148
    :goto_4
    return-object v0

    .line 1124
    :pswitch_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_3

    .line 1134
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 1139
    :pswitch_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 1148
    goto :goto_4

    .line 1105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1115
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public static l(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/library/api/geo/b;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1159
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v4

    .line 1160
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v5

    .line 1163
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    move-object v2, v0

    move-object v3, v0

    .line 1165
    :goto_0
    if-eqz v1, :cond_6

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v6, :cond_6

    .line 1166
    sget-object v6, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    :cond_0
    move-object v1, v2

    move-object v2, v3

    .line 1215
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    move-object v8, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_0

    .line 1168
    :pswitch_0
    const-string/jumbo v6, "places"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1169
    :cond_1
    :goto_2
    if-eqz v1, :cond_0

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v6, :cond_0

    .line 1170
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 1171
    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v6, :cond_1

    .line 1172
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 1173
    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->f:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v6, :cond_1

    const-string/jumbo v6, "place"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1174
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 1175
    const-class v6, Lcom/twitter/model/geo/TwitterPlace;

    invoke-static {p0, v6}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_2

    .line 1179
    :cond_2
    const-string/jumbo v6, "attributions"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1180
    :cond_3
    :goto_3
    if-eqz v1, :cond_0

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v6, :cond_0

    .line 1181
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 1182
    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v6, :cond_3

    .line 1183
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 1184
    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->f:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v6, :cond_3

    .line 1186
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/twitter/library/api/geo/PlaceAttribution;->a(Ljava/lang/String;)Lcom/twitter/library/api/geo/PlaceAttribution;

    move-result-object v6

    .line 1187
    if-eqz v6, :cond_3

    .line 1188
    invoke-virtual {v5, v6}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_3

    .line 1194
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    move-object v1, v2

    move-object v2, v3

    .line 1196
    goto :goto_1

    .line 1199
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    move-object v2, v3

    .line 1200
    goto :goto_1

    .line 1203
    :pswitch_2
    const-string/jumbo v1, "autotag_place_id"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1204
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v3

    .line 1206
    :cond_5
    const-string/jumbo v1, "geo_search_request_id"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1207
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v1

    move-object v2, v3

    goto/16 :goto_1

    .line 1218
    :cond_6
    new-instance v6, Lcom/twitter/library/api/geo/b;

    invoke-virtual {v4}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v5}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {v6, v3, v0, v2, v1}, Lcom/twitter/library/api/geo/b;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    return-object v6

    .line 1166
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static m(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/twitter/library/api/search/TwitterSearchQuery;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1281
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1282
    if-eqz p0, :cond_1

    .line 1283
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 1284
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_1

    .line 1285
    :goto_0
    if-eqz v0, :cond_1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v2, :cond_1

    .line 1286
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_0

    .line 1287
    invoke-static {p0}, Lcom/twitter/library/api/at;->n(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/library/api/search/TwitterSearchQuery;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1289
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 1293
    :cond_1
    return-object v1
.end method

.method public static n(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/library/api/search/TwitterSearchQuery;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    .line 1304
    .line 1309
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v3, v8

    move-object v2, v8

    move-wide v6, v4

    .line 1310
    :goto_0
    if-eqz v0, :cond_3

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_3

    .line 1311
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v1

    .line 1312
    sget-object v9, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v9, v0

    packed-switch v0, :pswitch_data_0

    .line 1338
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 1314
    :pswitch_1
    const-string/jumbo v0, "id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1315
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->j()J

    move-result-wide v6

    goto :goto_1

    .line 1320
    :pswitch_2
    const-string/jumbo v0, "name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1321
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1322
    :cond_1
    const-string/jumbo v0, "query"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1323
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1324
    :cond_2
    const-string/jumbo v0, "created_at"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1325
    sget-object v0, Lcom/twitter/util/al;->b:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/util/al;->a(Ljava/text/SimpleDateFormat;Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_1

    .line 1331
    :pswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 1340
    :cond_3
    new-instance v1, Lcom/twitter/library/api/search/TwitterSearchQuery;

    invoke-direct/range {v1 .. v8}, Lcom/twitter/library/api/search/TwitterSearchQuery;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcss;)V

    return-object v1

    .line 1312
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static o(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/api/search/TwitterSearchQuery;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1350
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1353
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 1354
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_5

    move-object v3, v7

    move-object v2, v7

    .line 1355
    :goto_0
    if-eqz v0, :cond_5

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_5

    .line 1356
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_4

    .line 1359
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v6, v7

    .line 1360
    :goto_1
    if-eqz v0, :cond_3

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_3

    .line 1361
    sget-object v1, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1387
    :cond_0
    :goto_2
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 1363
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v0

    .line 1364
    const-string/jumbo v1, "name"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1365
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1366
    :cond_1
    const-string/jumbo v1, "slug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1367
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 1372
    :pswitch_2
    const-string/jumbo v0, "users"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1373
    const-class v0, Lcom/twitter/model/core/TwitterUser;

    invoke-static {p0, v0}, Lcom/twitter/model/json/common/g;->d(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    goto :goto_2

    .line 1375
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_2

    .line 1380
    :pswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_2

    .line 1389
    :cond_3
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    .line 1390
    new-instance v1, Lcom/twitter/library/api/search/TwitterSearchQuery;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/twitter/library/api/search/TwitterSearchQuery;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    .line 1391
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1394
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 1397
    :cond_5
    return-object v8

    .line 1361
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static p(Lcom/fasterxml/jackson/core/JsonParser;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1408
    .line 1410
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    move-object v1, v0

    move-object v2, v0

    .line 1413
    :goto_0
    if-eqz v3, :cond_2

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v3, v4, :cond_2

    .line 1414
    sget-object v4, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1438
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto :goto_0

    .line 1416
    :pswitch_1
    const-string/jumbo v4, "users"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1417
    const-class v2, Lcom/twitter/model/core/TwitterUser;

    invoke-static {p0, v2}, Lcom/twitter/model/json/common/g;->d(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    .line 1419
    :cond_1
    :goto_2
    if-eqz v3, :cond_0

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v3, v4, :cond_0

    .line 1420
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto :goto_2

    .line 1427
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    .line 1428
    const-string/jumbo v3, "name"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1429
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1441
    :cond_2
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 1414
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static q(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/twitter/android/util/CategoryListItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1453
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1456
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 1457
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_4

    move-object v2, v0

    move-object v0, v1

    .line 1458
    :goto_0
    if-eqz v2, :cond_4

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v4, :cond_4

    .line 1459
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v4, :cond_3

    .line 1460
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    .line 1461
    :goto_1
    if-eqz v2, :cond_2

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v4, :cond_2

    .line 1462
    sget-object v4, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v2

    aget v2, v4, v2

    packed-switch v2, :pswitch_data_0

    .line 1481
    :cond_0
    :goto_2
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    goto :goto_1

    .line 1464
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    .line 1465
    const-string/jumbo v4, "name"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1466
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1467
    :cond_1
    const-string/jumbo v4, "slug"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1468
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1474
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_2

    .line 1483
    :cond_2
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 1484
    new-instance v2, Lcom/twitter/android/util/CategoryListItem;

    invoke-direct {v2, v1, v0}, Lcom/twitter/android/util/CategoryListItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1487
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    goto :goto_0

    .line 1490
    :cond_4
    return-object v3

    .line 1462
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static r(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1494
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1496
    if-eqz p0, :cond_2

    .line 1497
    const/4 v1, 0x0

    .line 1498
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 1499
    :goto_0
    if-eqz v1, :cond_2

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v3, :cond_2

    .line 1500
    sget-object v3, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 1533
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto :goto_0

    .line 1503
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 1504
    :goto_1
    if-eqz v1, :cond_0

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v3, :cond_0

    .line 1505
    sget-object v3, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_1

    .line 1525
    :cond_1
    :goto_2
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto :goto_1

    .line 1507
    :pswitch_2
    const-string/jumbo v1, "id"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1508
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->j()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1513
    :pswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1518
    :pswitch_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_2

    .line 1537
    :cond_2
    return-object v2

    .line 1500
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    .line 1505
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static s(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1548
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v1

    .line 1550
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 1551
    :goto_0
    if-eqz v0, :cond_1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v2, :cond_1

    .line 1552
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_0

    .line 1553
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    .line 1554
    invoke-static {p0}, Lcom/twitter/library/api/at;->v(Lcom/fasterxml/jackson/core/JsonParser;)Lcle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 1556
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 1559
    :cond_1
    invoke-virtual {v1}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static t(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcks;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1567
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v1

    .line 1568
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 1569
    :goto_0
    if-eqz v0, :cond_2

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v2, :cond_2

    .line 1570
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_1

    .line 1571
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 1585
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 1571
    :sswitch_0
    const-string/jumbo v3, "activity_events"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v3, "generic_activities"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    .line 1573
    :pswitch_0
    invoke-static {p0}, Lcom/twitter/library/api/at;->s(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Iterable;)Lcom/twitter/util/collection/r;

    goto :goto_2

    .line 1577
    :pswitch_1
    const-class v0, Lckx;

    invoke-static {p0, v0}, Lcom/twitter/model/json/common/g;->d(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Iterable;)Lcom/twitter/util/collection/r;

    goto :goto_2

    .line 1587
    :cond_2
    invoke-virtual {v1}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 1571
    nop

    :sswitch_data_0
    .sparse-switch
        0x10962c49 -> :sswitch_0
        0x6722cb55 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static u(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/timeline/w;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1598
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 1599
    :goto_0
    if-eqz v0, :cond_3

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_3

    .line 1600
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2

    .line 1601
    const-string/jumbo v0, "prompt"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1602
    invoke-static {p0}, Lcom/twitter/library/api/at;->ai(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/timeline/w;

    move-result-object v0

    .line 1611
    :goto_1
    return-object v0

    .line 1604
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    .line 1609
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 1606
    :cond_2
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 1607
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_2

    .line 1611
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static v(Lcom/fasterxml/jackson/core/JsonParser;)Lcle;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1818
    new-instance v2, Lclg;

    invoke-direct {v2}, Lclg;-><init>()V

    .line 1820
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->d()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 1821
    sget-object v0, Lcom/twitter/library/api/b;->a:Lcom/twitter/library/api/b;

    .line 1822
    :goto_0
    if-eqz v1, :cond_c

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v3, :cond_c

    .line 1823
    sget-object v3, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 1912
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto :goto_0

    .line 1825
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v1

    .line 1826
    const-string/jumbo v3, "action"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "event"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1827
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v0

    .line 1828
    sget-object v1, Lcom/twitter/library/api/a;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/api/b;

    .line 1829
    if-eqz v0, :cond_2

    .line 1830
    iget v1, v0, Lcom/twitter/library/api/b;->b:I

    invoke-virtual {v2, v1}, Lclg;->a(I)Lclg;

    .line 1831
    iget v1, v0, Lcom/twitter/library/api/b;->c:I

    invoke-virtual {v2, v1}, Lclg;->c(I)Lclg;

    .line 1832
    iget v1, v0, Lcom/twitter/library/api/b;->d:I

    invoke-virtual {v2, v1}, Lclg;->e(I)Lclg;

    .line 1833
    iget v1, v0, Lcom/twitter/library/api/b;->e:I

    invoke-virtual {v2, v1}, Lclg;->g(I)Lclg;

    goto :goto_1

    .line 1836
    :cond_2
    const/4 v0, 0x0

    .line 1915
    :goto_2
    return-object v0

    .line 1838
    :cond_3
    const-string/jumbo v3, "created_at"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1839
    sget-object v1, Lcom/twitter/util/al;->b:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/twitter/util/al;->a(Ljava/text/SimpleDateFormat;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lclg;->a(J)Lclg;

    goto :goto_1

    .line 1840
    :cond_4
    const-string/jumbo v3, "max_position"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1841
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lclg;->b(J)Lclg;

    goto :goto_1

    .line 1842
    :cond_5
    const-string/jumbo v3, "min_position"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1843
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lclg;->c(J)Lclg;

    goto :goto_1

    .line 1848
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v1

    .line 1850
    const-string/jumbo v3, "sources"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1851
    const/4 v1, 0x1

    iget v3, v0, Lcom/twitter/library/api/b;->c:I

    if-ne v1, v3, :cond_6

    .line 1852
    const-class v1, Lcom/twitter/model/core/TwitterUser;

    invoke-static {p0, v1}, Lcom/twitter/model/json/common/g;->d(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lclg;->a(Ljava/util/List;)Lclg;

    goto/16 :goto_1

    .line 1854
    :cond_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_1

    .line 1856
    :cond_7
    const-string/jumbo v3, "targets"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1857
    iget v1, v0, Lcom/twitter/library/api/b;->d:I

    packed-switch v1, :pswitch_data_1

    .line 1868
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_1

    .line 1859
    :pswitch_3
    const-class v1, Lcom/twitter/model/core/TwitterUser;

    invoke-static {p0, v1}, Lcom/twitter/model/json/common/g;->d(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lclg;->b(Ljava/util/List;)Lclg;

    goto/16 :goto_1

    .line 1863
    :pswitch_4
    const-class v1, Lcom/twitter/model/core/cs;

    invoke-static {p0, v1}, Lcom/twitter/model/json/common/g;->d(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lclg;->b(Ljava/util/List;)Lclg;

    goto/16 :goto_1

    .line 1872
    :cond_8
    const-string/jumbo v3, "target_objects"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1873
    iget v1, v0, Lcom/twitter/library/api/b;->e:I

    packed-switch v1, :pswitch_data_2

    .line 1884
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_1

    .line 1875
    :pswitch_5
    const-class v1, Lcom/twitter/model/core/cs;

    invoke-static {p0, v1}, Lcom/twitter/model/json/common/g;->d(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lclg;->c(Ljava/util/List;)Lclg;

    goto/16 :goto_1

    .line 1879
    :pswitch_6
    const-class v1, Lcom/twitter/model/core/cm;

    invoke-static {p0, v1}, Lcom/twitter/model/json/common/g;->d(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lclg;->c(Ljava/util/List;)Lclg;

    goto/16 :goto_1

    .line 1889
    :cond_9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_1

    .line 1894
    :pswitch_7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v1

    .line 1895
    const-string/jumbo v3, "sources_size"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1896
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->i()I

    move-result v1

    invoke-virtual {v2, v1}, Lclg;->b(I)Lclg;

    goto/16 :goto_1

    .line 1897
    :cond_a
    const-string/jumbo v3, "targets_size"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1898
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->i()I

    move-result v1

    invoke-virtual {v2, v1}, Lclg;->d(I)Lclg;

    goto/16 :goto_1

    .line 1899
    :cond_b
    const-string/jumbo v3, "target_objects_size"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1900
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->i()I

    move-result v1

    invoke-virtual {v2, v1}, Lclg;->f(I)Lclg;

    goto/16 :goto_1

    .line 1905
    :pswitch_8
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto/16 :goto_1

    .line 1915
    :cond_c
    invoke-virtual {v2}, Lclg;->r()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcle;

    goto/16 :goto_2

    .line 1823
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
    .end packed-switch

    .line 1857
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1873
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static w(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/search/j;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 1920
    .line 1924
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v5, v0

    move-object v1, v4

    move-object v2, v4

    move v3, v6

    move-object v0, v4

    .line 1925
    :goto_0
    if-eqz v5, :cond_4

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v5, v7, :cond_4

    .line 1926
    sget-object v7, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v5

    aget v5, v7, v5

    packed-switch v5, :pswitch_data_0

    .line 1955
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    goto :goto_0

    .line 1928
    :pswitch_1
    const-string/jumbo v5, "summary_type"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1929
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/twitter/model/search/j;->a(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    .line 1934
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v5

    .line 1935
    const-string/jumbo v7, "summary_query"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1936
    invoke-static {p0}, Lcom/twitter/library/api/at;->ak(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1937
    :cond_1
    const-string/jumbo v7, "title"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1938
    invoke-static {p0}, Lcom/twitter/library/api/at;->ak(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1939
    :cond_2
    const-string/jumbo v5, "tweets"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1940
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1941
    invoke-static {p0, v0}, Lcom/twitter/library/api/at;->a(Lcom/fasterxml/jackson/core/JsonParser;Ljava/util/ArrayList;)I

    move-result v3

    goto :goto_1

    .line 1943
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 1948
    :pswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 1957
    :cond_4
    if-ne v3, v6, :cond_5

    move-object v0, v4

    .line 1966
    :goto_2
    return-object v0

    .line 1961
    :cond_5
    if-eqz v3, :cond_6

    const/4 v5, 0x1

    if-ne v3, v5, :cond_8

    :cond_6
    if-eqz v1, :cond_7

    if-nez v2, :cond_8

    :cond_7
    move-object v0, v4

    .line 1964
    goto :goto_2

    .line 1966
    :cond_8
    new-instance v4, Lcom/twitter/model/search/j;

    invoke-direct {v4, v3, v2, v1, v0}, Lcom/twitter/model/search/j;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object v0, v4

    goto :goto_2

    .line 1926
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static x(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2090
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v4

    .line 2091
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 2092
    :goto_0
    if-eqz v0, :cond_5

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_5

    .line 2093
    sget-object v1, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 2141
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 2095
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    move-object v1, v3

    move-object v2, v3

    .line 2098
    :goto_2
    if-eqz v0, :cond_3

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v5, :cond_3

    .line 2099
    sget-object v5, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v5, v0

    packed-switch v0, :pswitch_data_1

    :pswitch_2
    move-object v0, v1

    move-object v1, v2

    .line 2119
    :goto_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    move-object v6, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_2

    .line 2101
    :pswitch_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v0

    .line 2102
    const-string/jumbo v5, "data"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2103
    const-class v0, Lcom/twitter/model/core/cv;

    invoke-static {p0, v0}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cv;

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    .line 2104
    :cond_1
    const-string/jumbo v5, "metadata"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2105
    invoke-static {p0}, Lcom/twitter/library/api/at;->y(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/search/TwitterUserMetadata;

    move-result-object v0

    move-object v1, v2

    goto :goto_3

    .line 2107
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    move-object v0, v1

    move-object v1, v2

    .line 2109
    goto :goto_3

    .line 2112
    :pswitch_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    move-object v0, v1

    move-object v1, v2

    .line 2113
    goto :goto_3

    .line 2121
    :cond_3
    if-eqz v2, :cond_0

    .line 2122
    if-eqz v1, :cond_4

    .line 2123
    invoke-virtual {v2, v1}, Lcom/twitter/model/core/cv;->a(Lcom/twitter/model/search/TwitterUserMetadata;)Lcom/twitter/model/core/cv;

    .line 2124
    iget-object v0, v1, Lcom/twitter/model/search/TwitterUserMetadata;->a:Lcom/twitter/model/core/TwitterSocialProof;

    if-eqz v0, :cond_4

    .line 2125
    invoke-virtual {v2}, Lcom/twitter/model/core/cv;->g()I

    move-result v0

    iget-object v1, v1, Lcom/twitter/model/search/TwitterUserMetadata;->a:Lcom/twitter/model/core/TwitterSocialProof;

    iget v1, v1, Lcom/twitter/model/core/TwitterSocialProof;->g:I

    invoke-static {v0, v1}, Lcom/twitter/model/core/p;->a(II)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/twitter/model/core/cv;->i(I)Lcom/twitter/model/core/cv;

    .line 2129
    :cond_4
    invoke-virtual {v2}, Lcom/twitter/model/core/cv;->q()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_1

    .line 2134
    :pswitch_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 2143
    :cond_5
    invoke-virtual {v4}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 2093
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2099
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static y(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/twitter/model/search/TwitterUserMetadata;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2149
    .line 2150
    const/4 v4, 0x0

    .line 2153
    const-class v0, Lcom/twitter/model/json/search/JsonTwitterUserMetadata;

    invoke-static {p0, v0}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/json/search/JsonTwitterUserMetadata;

    .line 2154
    if-eqz v0, :cond_1

    .line 2155
    const-string/jumbo v1, "top"

    iget-object v2, v0, Lcom/twitter/model/json/search/JsonTwitterUserMetadata;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 2156
    iget-object v2, v0, Lcom/twitter/model/json/search/JsonTwitterUserMetadata;->a:Ljava/lang/String;

    .line 2157
    iget-object v1, v0, Lcom/twitter/model/json/search/JsonTwitterUserMetadata;->c:Lcom/twitter/model/json/search/JsonSearchSocialProof;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/twitter/model/json/search/JsonTwitterUserMetadata;->c:Lcom/twitter/model/json/search/JsonSearchSocialProof;

    .line 2158
    invoke-virtual {v0}, Lcom/twitter/model/json/search/JsonSearchSocialProof;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/TwitterSocialProof;

    :goto_0
    move-object v1, v0

    .line 2161
    :goto_1
    new-instance v0, Lcom/twitter/model/search/TwitterUserMetadata;

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/twitter/model/search/TwitterUserMetadata;-><init>(Lcom/twitter/model/core/TwitterSocialProof;Ljava/lang/String;Ljava/lang/String;ZLcom/twitter/model/core/bb;)V

    return-object v0

    :cond_0
    move-object v0, v3

    .line 2158
    goto :goto_0

    :cond_1
    move-object v2, v3

    move-object v1, v3

    goto :goto_1
.end method

.method public static z(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/twitter/model/core/cs;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2691
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2692
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 2694
    :goto_0
    if-eqz v0, :cond_7

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v2, :cond_7

    .line 2695
    sget-object v2, Lcom/twitter/library/api/au;->a:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 2736
    :cond_0
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 2697
    :pswitch_1
    const-string/jumbo v0, "media_items"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2698
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 2699
    :goto_2
    if-eqz v0, :cond_0

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v2, :cond_0

    .line 2700
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_4

    .line 2701
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 2702
    :goto_3
    if-eqz v0, :cond_5

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->c:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v2, :cond_5

    .line 2703
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->b:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_3

    .line 2704
    const-string/jumbo v0, "status"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2705
    const-class v0, Lcom/twitter/model/core/cs;

    .line 2706
    invoke-static {p0, v0}, Lcom/twitter/model/json/common/g;->c(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cs;

    .line 2707
    if-eqz v0, :cond_1

    .line 2708
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2716
    :cond_1
    :goto_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_3

    .line 2711
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_4

    .line 2713
    :cond_3
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->e:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_1

    .line 2714
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_4

    .line 2718
    :cond_4
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->d:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_5

    .line 2719
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    .line 2721
    :cond_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->a()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2

    .line 2724
    :cond_6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 2729
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->c()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_1

    .line 2739
    :cond_7
    return-object v1

    .line 2695
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
