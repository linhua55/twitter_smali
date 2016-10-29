.class Lcom/twitter/android/jb;
.super Landroid/os/AsyncTask;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lblg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/LoginVerificationFragment;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/twitter/android/LoginVerificationFragment;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 360
    iput-object p1, p0, Lcom/twitter/android/jb;->a:Lcom/twitter/android/LoginVerificationFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 361
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/jb;->b:Landroid/content/Context;

    .line 362
    iput-object p3, p0, Lcom/twitter/android/jb;->c:Ljava/lang/String;

    .line 363
    iput-object p4, p0, Lcom/twitter/android/jb;->d:Ljava/lang/String;

    .line 364
    iput-object p5, p0, Lcom/twitter/android/jb;->e:Ljava/lang/String;

    .line 365
    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Void;)Lblg;
    .locals 5

    .prologue
    .line 374
    iget-object v0, p0, Lcom/twitter/android/jb;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/jb;->a:Lcom/twitter/android/LoginVerificationFragment;

    invoke-static {v1}, Lcom/twitter/android/LoginVerificationFragment;->b(Lcom/twitter/android/LoginVerificationFragment;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/twitter/android/jb;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/twitter/android/jb;->e:Ljava/lang/String;

    invoke-static {v0, v2, v3, v1, v4}, Lblf;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Lblg;

    move-result-object v0

    return-object v0
.end method

.method public a(Lblg;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 380
    if-nez p1, :cond_0

    .line 381
    iget-object v0, p0, Lcom/twitter/android/jb;->a:Lcom/twitter/android/LoginVerificationFragment;

    invoke-virtual {v0}, Lcom/twitter/android/LoginVerificationFragment;->l()V

    .line 382
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/jb;->a:Lcom/twitter/android/LoginVerificationFragment;

    .line 383
    invoke-static {v1}, Lcom/twitter/android/LoginVerificationFragment;->c(Lcom/twitter/android/LoginVerificationFragment;)Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "login_verification::request:accept:error"

    aput-object v2, v1, v4

    .line 384
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 382
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 385
    iget-object v0, p0, Lcom/twitter/android/jb;->a:Lcom/twitter/android/LoginVerificationFragment;

    iget-object v1, p0, Lcom/twitter/android/jb;->a:Lcom/twitter/android/LoginVerificationFragment;

    invoke-static {v1}, Lcom/twitter/android/LoginVerificationFragment;->d(Lcom/twitter/android/LoginVerificationFragment;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/twitter/android/jb;->c:Ljava/lang/String;

    invoke-static {v0, v2, v3, v1}, Lcom/twitter/android/LoginVerificationFragment;->a(Lcom/twitter/android/LoginVerificationFragment;JLjava/lang/String;)V

    .line 390
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/jb;->a:Lcom/twitter/android/LoginVerificationFragment;

    new-instance v1, Lbko;

    iget-object v2, p0, Lcom/twitter/android/jb;->a:Lcom/twitter/android/LoginVerificationFragment;

    invoke-virtual {v2}, Lcom/twitter/android/LoginVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/jb;->a:Lcom/twitter/android/LoginVerificationFragment;

    invoke-static {v3}, Lcom/twitter/android/LoginVerificationFragment;->c(Lcom/twitter/android/LoginVerificationFragment;)Lcom/twitter/library/client/Session;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lbko;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lblg;)V

    const/4 v2, 0x3

    invoke-static {v0, v1, v2, v4}, Lcom/twitter/android/LoginVerificationFragment;->a(Lcom/twitter/android/LoginVerificationFragment;Lcom/twitter/library/service/x;II)Z

    goto :goto_0
.end method

.method public synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 353
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twitter/android/jb;->a([Ljava/lang/Void;)Lblg;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 353
    check-cast p1, Lblg;

    invoke-virtual {p0, p1}, Lcom/twitter/android/jb;->a(Lblg;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 369
    iget-object v0, p0, Lcom/twitter/android/jb;->a:Lcom/twitter/android/LoginVerificationFragment;

    iget-object v1, p0, Lcom/twitter/android/jb;->a:Lcom/twitter/android/LoginVerificationFragment;

    const v2, 0x7f0a04de

    invoke-virtual {v1, v2}, Lcom/twitter/android/LoginVerificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/LoginVerificationFragment;->a(Ljava/lang/String;)V

    .line 370
    return-void
.end method
