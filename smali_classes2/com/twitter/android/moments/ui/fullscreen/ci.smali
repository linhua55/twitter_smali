.class Lcom/twitter/android/moments/ui/fullscreen/ci;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation


# instance fields
.field private final a:Lcom/twitter/android/moments/ui/fullscreen/cm;

.field private final b:Lcom/twitter/android/widget/ToggleImageButton;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/cm;Lcom/twitter/android/widget/ToggleImageButton;)V
    .locals 0

    .prologue
    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/ci;->a:Lcom/twitter/android/moments/ui/fullscreen/cm;

    .line 580
    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/ci;->b:Lcom/twitter/android/widget/ToggleImageButton;

    .line 581
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 585
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ci;->b:Lcom/twitter/android/widget/ToggleImageButton;

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/twitter/util/h;->b(Z)Z

    .line 586
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ci;->a:Lcom/twitter/android/moments/ui/fullscreen/cm;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/fullscreen/ci;->b:Lcom/twitter/android/widget/ToggleImageButton;

    invoke-virtual {v3}, Lcom/twitter/android/widget/ToggleImageButton;->b()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/fullscreen/cm;->a(Z)V

    .line 587
    return-void

    :cond_0
    move v0, v2

    .line 585
    goto :goto_0

    :cond_1
    move v1, v2

    .line 586
    goto :goto_1
.end method
