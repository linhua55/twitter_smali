.class public Laqr;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Laqs;


# instance fields
.field private final a:Landroid/support/v4/app/FragmentManager;

.field private final b:Lcom/twitter/ui/widget/ad;

.field private c:Lcom/twitter/ui/widget/Tooltip;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p2, p0, Laqr;->a:Landroid/support/v4/app/FragmentManager;

    .line 22
    const v0, 0x7f130629

    invoke-static {p1, v0}, Lcom/twitter/ui/widget/Tooltip;->a(Landroid/content/Context;I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    const v1, 0x7f0a06ab

    .line 23
    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/ad;->a(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    const v1, 0x7f0d0398

    .line 24
    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/ad;->b(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    const/4 v1, 0x1

    .line 25
    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/ad;->a(Z)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/ad;->c(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    iput-object v0, p0, Laqr;->b:Lcom/twitter/ui/widget/ad;

    .line 27
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 31
    invoke-virtual {p0}, Laqr;->b()V

    .line 32
    iget-object v0, p0, Laqr;->b:Lcom/twitter/ui/widget/ad;

    iget-object v1, p0, Laqr;->a:Landroid/support/v4/app/FragmentManager;

    const-string/jumbo v2, "account_notif_tooltip"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/ui/widget/ad;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Z)Lcom/twitter/ui/widget/Tooltip;

    move-result-object v0

    iput-object v0, p0, Laqr;->c:Lcom/twitter/ui/widget/Tooltip;

    .line 33
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Laqr;->c:Lcom/twitter/ui/widget/Tooltip;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Laqr;->c:Lcom/twitter/ui/widget/Tooltip;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/Tooltip;->a(Z)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Laqr;->c:Lcom/twitter/ui/widget/Tooltip;

    .line 41
    :cond_0
    return-void
.end method
