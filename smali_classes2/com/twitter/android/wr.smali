.class Lcom/twitter/android/wr;
.super Landroid/os/AsyncTask;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/twitter/model/timeline/w;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/twitter/android/UmfInlinePromptView;


# direct methods
.method constructor <init>(Lcom/twitter/android/UmfInlinePromptView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/twitter/android/wr;->b:Lcom/twitter/android/UmfInlinePromptView;

    iput-object p2, p0, Lcom/twitter/android/wr;->a:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/twitter/model/timeline/w;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 51
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    .line 53
    new-instance v2, Lcom/twitter/library/provider/b;

    iget-object v3, p0, Lcom/twitter/android/wr;->a:Landroid/content/Context;

    .line 54
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/twitter/library/provider/b;-><init>(Landroid/content/ContentResolver;)V

    .line 55
    iget-object v3, p0, Lcom/twitter/android/wr;->a:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iget v1, v1, Lcom/twitter/model/timeline/w;->c:I

    .line 56
    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/provider/dm;->b(ILcom/twitter/library/provider/b;)I

    .line 57
    invoke-virtual {v2}, Lcom/twitter/library/provider/b;->a()V

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    check-cast p1, [Lcom/twitter/model/timeline/w;

    invoke-virtual {p0, p1}, Lcom/twitter/android/wr;->a([Lcom/twitter/model/timeline/w;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
