.class Lcom/twitter/android/moments/ui/fullscreen/ca;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/y",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/widget/ToggleImageButton;

.field final synthetic b:Lcom/twitter/android/moments/ui/fullscreen/by;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/by;Lcom/twitter/android/widget/ToggleImageButton;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/ca;->b:Lcom/twitter/android/moments/ui/fullscreen/by;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/ca;->a:Lcom/twitter/android/widget/ToggleImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 206
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/ca;->a:Lcom/twitter/android/widget/ToggleImageButton;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/twitter/android/widget/ToggleImageButton;->setToggledOn(Z)V

    .line 207
    return-void

    .line 206
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 203
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/ca;->a(Ljava/lang/Boolean;)V

    return-void
.end method
