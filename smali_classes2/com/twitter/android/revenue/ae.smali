.class final Lcom/twitter/android/revenue/ae;
.super Landroid/os/AsyncTask;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/twitter/android/revenue/ae;->a:Landroid/content/Context;

    .line 106
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/twitter/android/revenue/aa;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/twitter/android/revenue/ae;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 8

    .prologue
    .line 110
    invoke-static {p1}, Lcom/twitter/util/collection/CollectionUtils;->a([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 142
    :goto_0
    return-object v0

    .line 115
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/twitter/android/revenue/ae;->a:Landroid/content/Context;

    .line 116
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const-class v1, Lcom/twitter/model/core/cs;

    invoke-static {v0, v1}, Lcom/twitter/model/json/common/g;->a(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cs;

    .line 117
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 118
    iget-object v1, p0, Lcom/twitter/android/revenue/ae;->a:Landroid/content/Context;

    .line 119
    invoke-static {v1, v2, v3}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v4

    .line 122
    const-string/jumbo v1, "timeline"

    const-string/jumbo v5, "data_id"

    invoke-virtual {v0}, Lcom/twitter/model/core/cs;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v1, v5, v6}, Lcom/twitter/library/provider/dm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I

    .line 124
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v5

    .line 125
    new-instance v1, Lcom/twitter/model/timeline/cf;

    invoke-direct {v1}, Lcom/twitter/model/timeline/cf;-><init>()V

    .line 126
    invoke-virtual {v1, v0}, Lcom/twitter/model/timeline/cf;->a(Lcom/twitter/model/core/cs;)Lcom/twitter/model/timeline/cf;

    move-result-object v1

    const/4 v6, 0x0

    .line 127
    invoke-virtual {v1, v6}, Lcom/twitter/model/timeline/cf;->a(I)Lcom/twitter/model/timeline/az;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/timeline/cf;

    iget-wide v6, v0, Lcom/twitter/model/core/cs;->L:J

    .line 128
    invoke-virtual {v1, v6, v7}, Lcom/twitter/model/timeline/cf;->b(J)Lcom/twitter/model/timeline/az;

    move-result-object v1

    check-cast v1, Lcom/twitter/model/timeline/cf;

    .line 129
    invoke-virtual {v0}, Lcom/twitter/model/core/cs;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/model/timeline/cf;->b(Ljava/lang/String;)Lcom/twitter/model/timeline/az;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/timeline/cf;

    .line 130
    invoke-virtual {v0}, Lcom/twitter/model/timeline/cf;->q()Ljava/lang/Object;

    move-result-object v0

    .line 125
    invoke-virtual {v5, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    .line 133
    invoke-virtual {v5}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/twitter/library/provider/cm;->a(Ljava/util/List;)Lcom/twitter/library/provider/cm;

    move-result-object v0

    .line 134
    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/provider/cm;->a(J)Lcom/twitter/library/provider/cm;

    move-result-object v0

    const/4 v1, 0x0

    .line 135
    invoke-virtual {v0, v1}, Lcom/twitter/library/provider/cm;->a(I)Lcom/twitter/library/provider/cm;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lcom/twitter/library/provider/cm;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/provider/ck;

    .line 132
    invoke-virtual {v4, v0}, Lcom/twitter/library/provider/dm;->a(Lcom/twitter/library/provider/ck;)I

    .line 138
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 142
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 147
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/twitter/android/revenue/ae;->a:Landroid/content/Context;

    const-string/jumbo v1, "Tweet Injected!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 150
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 100
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/twitter/android/revenue/ae;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 100
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/twitter/android/revenue/ae;->a(Ljava/lang/Boolean;)V

    return-void
.end method
