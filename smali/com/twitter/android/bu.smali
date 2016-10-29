.class Lcom/twitter/android/bu;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/dm/g;


# instance fields
.field final synthetic a:Landroid/app/ProgressDialog;

.field final synthetic b:Lcom/twitter/android/dm/n;

.field final synthetic c:Lcom/twitter/android/DMActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/DMActivity;Landroid/app/ProgressDialog;Lcom/twitter/android/dm/n;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/twitter/android/bu;->c:Lcom/twitter/android/DMActivity;

    iput-object p2, p0, Lcom/twitter/android/bu;->a:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/twitter/android/bu;->b:Lcom/twitter/android/dm/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/core/TwitterUser;Z)V
    .locals 6

    .prologue
    .line 308
    iget-object v0, p0, Lcom/twitter/android/bu;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/twitter/android/bu;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 311
    :cond_0
    if-eqz p2, :cond_1

    .line 312
    iget-object v0, p0, Lcom/twitter/android/bu;->c:Lcom/twitter/android/DMActivity;

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/twitter/model/core/TwitterUser;->a()J

    move-result-wide v4

    aput-wide v4, v1, v2

    iget-object v2, p0, Lcom/twitter/android/bu;->b:Lcom/twitter/android/dm/n;

    .line 313
    invoke-virtual {v2}, Lcom/twitter/android/dm/n;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/bu;->b:Lcom/twitter/android/dm/n;

    invoke-virtual {v3}, Lcom/twitter/android/dm/n;->l()Landroid/net/Uri;

    move-result-object v3

    .line 312
    invoke-static {v0, v1, v2, v3}, Lcom/twitter/android/DMActivity;->a(Lcom/twitter/android/DMActivity;[JLjava/lang/String;Landroid/net/Uri;)V

    .line 315
    :cond_1
    return-void
.end method
