.class final Lcom/twitter/android/rz;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/model/core/Tweet;

.field final synthetic b:Lcom/twitter/library/client/bk;

.field final synthetic c:Landroid/support/v4/app/FragmentActivity;

.field final synthetic d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field final synthetic e:Lcom/twitter/android/client/c;


# direct methods
.method constructor <init>(Lcom/twitter/model/core/Tweet;Lcom/twitter/library/client/bk;Landroid/support/v4/app/FragmentActivity;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/android/client/c;)V
    .locals 0

    .prologue
    .line 1854
    iput-object p1, p0, Lcom/twitter/android/rz;->a:Lcom/twitter/model/core/Tweet;

    iput-object p2, p0, Lcom/twitter/android/rz;->b:Lcom/twitter/library/client/bk;

    iput-object p3, p0, Lcom/twitter/android/rz;->c:Landroid/support/v4/app/FragmentActivity;

    iput-object p4, p0, Lcom/twitter/android/rz;->d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iput-object p5, p0, Lcom/twitter/android/rz;->e:Lcom/twitter/android/client/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1857
    iget-object v0, p0, Lcom/twitter/android/rz;->a:Lcom/twitter/model/core/Tweet;

    invoke-static {v0}, Lcom/twitter/model/core/Tweet;->b(Lcom/twitter/model/core/Tweet;)Ljava/lang/String;

    move-result-object v0

    .line 1858
    new-instance v1, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v2, p0, Lcom/twitter/android/rz;->b:Lcom/twitter/library/client/bk;

    invoke-virtual {v2}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v2

    .line 1859
    invoke-virtual {v2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    iget-object v2, p0, Lcom/twitter/android/rz;->c:Landroid/support/v4/app/FragmentActivity;

    iget-object v3, p0, Lcom/twitter/android/rz;->a:Lcom/twitter/model/core/Tweet;

    iget-object v4, p0, Lcom/twitter/android/rz;->d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 1860
    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Landroid/content/Context;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;)Lcom/twitter/library/scribe/TwitterScribeLog;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/twitter/android/rz;->d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const-string/jumbo v5, "dismiss"

    .line 1861
    invoke-static {v4, v0, v6, v5}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/rz;->d:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 1863
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeAssociation;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 1858
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 1864
    iget-object v0, p0, Lcom/twitter/android/rz;->e:Lcom/twitter/android/client/c;

    iget-object v1, p0, Lcom/twitter/android/rz;->a:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/c;->a(Lcom/twitter/model/core/Tweet;)V

    .line 1865
    return-void
.end method
