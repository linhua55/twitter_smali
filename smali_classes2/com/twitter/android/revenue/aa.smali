.class Lcom/twitter/android/revenue/aa;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/AlertDialog$Builder;

.field final synthetic b:Lcom/twitter/android/revenue/RevenueInjectTweetDebugDialogPreference;


# direct methods
.method constructor <init>(Lcom/twitter/android/revenue/RevenueInjectTweetDebugDialogPreference;Landroid/app/AlertDialog$Builder;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/twitter/android/revenue/aa;->b:Lcom/twitter/android/revenue/RevenueInjectTweetDebugDialogPreference;

    iput-object p2, p0, Lcom/twitter/android/revenue/aa;->a:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 77
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 79
    new-instance v0, Lcom/twitter/android/revenue/ab;

    invoke-direct {v0, p0}, Lcom/twitter/android/revenue/ab;-><init>(Lcom/twitter/android/revenue/aa;)V

    .line 88
    new-instance v1, Lcom/twitter/android/revenue/ac;

    iget-object v2, p0, Lcom/twitter/android/revenue/aa;->a:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "MAP Carousel Injected!"

    invoke-direct {v1, v2, v0, v3}, Lcom/twitter/android/revenue/ac;-><init>(Landroid/content/Context;Ldau;Ljava/lang/String;)V

    new-array v2, v4, [Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/revenue/aa;->b:Lcom/twitter/android/revenue/RevenueInjectTweetDebugDialogPreference;

    .line 90
    invoke-static {v0}, Lcom/twitter/android/revenue/RevenueInjectTweetDebugDialogPreference;->a(Lcom/twitter/android/revenue/RevenueInjectTweetDebugDialogPreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/twitter/android/revenue/ac;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    new-instance v1, Lcom/twitter/android/revenue/ae;

    iget-object v0, p0, Lcom/twitter/android/revenue/aa;->a:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/twitter/android/revenue/ae;-><init>(Landroid/content/Context;Lcom/twitter/android/revenue/aa;)V

    new-array v2, v4, [Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/revenue/aa;->b:Lcom/twitter/android/revenue/RevenueInjectTweetDebugDialogPreference;

    invoke-static {v0}, Lcom/twitter/android/revenue/RevenueInjectTweetDebugDialogPreference;->a(Lcom/twitter/android/revenue/RevenueInjectTweetDebugDialogPreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/twitter/android/revenue/ae;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
