.class Lcom/twitter/android/pj;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/twitter/android/SecuritySettingsActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/SecuritySettingsActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 528
    iput-object p1, p0, Lcom/twitter/android/pj;->b:Lcom/twitter/android/SecuritySettingsActivity;

    iput-object p2, p0, Lcom/twitter/android/pj;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 531
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/pj;->b:Lcom/twitter/android/SecuritySettingsActivity;

    invoke-static {v1}, Lcom/twitter/android/SecuritySettingsActivity;->d(Lcom/twitter/android/SecuritySettingsActivity;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/pj;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 532
    iget-object v0, p0, Lcom/twitter/android/pj;->b:Lcom/twitter/android/SecuritySettingsActivity;

    iget-object v1, p0, Lcom/twitter/android/pj;->b:Lcom/twitter/android/SecuritySettingsActivity;

    const v2, 0x7f0a04f6

    invoke-virtual {v1, v2}, Lcom/twitter/android/SecuritySettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/SecuritySettingsActivity;->a(Ljava/lang/String;)V

    .line 533
    iget-object v0, p0, Lcom/twitter/android/pj;->b:Lcom/twitter/android/SecuritySettingsActivity;

    new-instance v1, Lblt;

    iget-object v2, p0, Lcom/twitter/android/pj;->b:Lcom/twitter/android/SecuritySettingsActivity;

    iget-object v3, p0, Lcom/twitter/android/pj;->b:Lcom/twitter/android/SecuritySettingsActivity;

    .line 535
    invoke-virtual {v3}, Lcom/twitter/android/SecuritySettingsActivity;->k()Lcom/twitter/library/client/bk;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/pj;->b:Lcom/twitter/android/SecuritySettingsActivity;

    invoke-static {v4}, Lcom/twitter/android/SecuritySettingsActivity;->e(Lcom/twitter/android/SecuritySettingsActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/twitter/library/client/bk;->b(Ljava/lang/String;)Lcom/twitter/library/client/Session;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/pj;->b:Lcom/twitter/android/SecuritySettingsActivity;

    .line 536
    invoke-static {v4}, Lcom/twitter/android/SecuritySettingsActivity;->f(Lcom/twitter/android/SecuritySettingsActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lblt;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 533
    invoke-static {v0, v1, v2}, Lcom/twitter/android/SecuritySettingsActivity;->a(Lcom/twitter/android/SecuritySettingsActivity;Lcom/twitter/library/service/x;I)Z

    .line 538
    return-void
.end method
