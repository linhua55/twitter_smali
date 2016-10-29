.class final Lcom/twitter/android/revenue/ac;
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

.field private final b:Ldau;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldau",
            "<",
            "Lcom/twitter/model/timeline/ay;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ldau;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldau",
            "<",
            "Lcom/twitter/model/timeline/ay;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 160
    iput-object p1, p0, Lcom/twitter/android/revenue/ac;->a:Landroid/content/Context;

    .line 161
    iput-object p2, p0, Lcom/twitter/android/revenue/ac;->b:Ldau;

    .line 162
    iput-object p3, p0, Lcom/twitter/android/revenue/ac;->c:Ljava/lang/String;

    .line 163
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 167
    invoke-static {p1}, Lcom/twitter/util/collection/CollectionUtils;->a([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 220
    :goto_0
    return-object v0

    .line 172
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/twitter/android/revenue/ac;->a:Landroid/content/Context;

    .line 173
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/revenue/RevenueInjectTweetDebugDialogPreference;->a(Ljava/io/InputStream;)Lcom/twitter/library/api/ai;

    move-result-object v0

    .line 175
    iget-object v0, v0, Lcom/twitter/library/api/ai;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/twitter/android/revenue/ac;->b:Ldau;

    invoke-static {v0, v1}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/lang/Iterable;Ldau;)Ljava/util/List;

    move-result-object v0

    .line 176
    new-instance v1, Lcom/twitter/android/revenue/ad;

    invoke-direct {v1, p0}, Lcom/twitter/android/revenue/ad;-><init>(Lcom/twitter/android/revenue/ac;)V

    invoke-static {v0, v1}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/util/List;Lczn;)Ljava/util/List;

    move-result-object v0

    .line 207
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    .line 208
    iget-object v1, p0, Lcom/twitter/android/revenue/ac;->a:Landroid/content/Context;

    .line 209
    invoke-static {v1, v2, v3}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v1

    .line 210
    invoke-static {v0}, Lcom/twitter/library/provider/cm;->a(Ljava/util/List;)Lcom/twitter/library/provider/cm;

    move-result-object v0

    .line 211
    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/provider/cm;->a(J)Lcom/twitter/library/provider/cm;

    move-result-object v0

    const/4 v2, 0x0

    .line 212
    invoke-virtual {v0, v2}, Lcom/twitter/library/provider/cm;->a(I)Lcom/twitter/library/provider/cm;

    move-result-object v0

    new-instance v2, Lcom/twitter/model/timeline/bw;

    invoke-direct {v2}, Lcom/twitter/model/timeline/bw;-><init>()V

    const/4 v3, 0x1

    .line 213
    invoke-virtual {v2, v3}, Lcom/twitter/model/timeline/bw;->a(Z)Lcom/twitter/model/timeline/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/model/timeline/bw;->a()Lcom/twitter/model/timeline/bu;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twitter/library/provider/cm;->a(Lcom/twitter/model/timeline/bu;)Lcom/twitter/library/provider/cm;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lcom/twitter/library/provider/cm;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/provider/ck;

    .line 210
    invoke-virtual {v1, v0}, Lcom/twitter/library/provider/dm;->a(Lcom/twitter/library/provider/ck;)I

    .line 216
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 220
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 225
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/twitter/android/revenue/ac;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/revenue/ac;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 228
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 153
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/twitter/android/revenue/ac;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 153
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/twitter/android/revenue/ac;->a(Ljava/lang/Boolean;)V

    return-void
.end method
