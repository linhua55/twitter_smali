.class public Lcom/twitter/android/moments/ui/fullscreen/gm;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/fullscreen/gl;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lahd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lahd;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/gm;->a:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/gm;->b:Lahd;

    .line 24
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/core/Tweet;)V
    .locals 4

    .prologue
    .line 28
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gm;->a:Landroid/content/Context;

    new-instance v1, Lcom/twitter/app/common/base/z;

    invoke-direct {v1}, Lcom/twitter/app/common/base/z;-><init>()V

    const/4 v2, 0x1

    .line 29
    invoke-virtual {v1, v2}, Lcom/twitter/app/common/base/z;->d(Z)Lcom/twitter/app/common/base/z;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/gm;->a:Landroid/content/Context;

    const-class v3, Lcom/twitter/android/TweetActivity;

    .line 30
    invoke-virtual {v1, v2, v3}, Lcom/twitter/app/common/base/z;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "tw"

    .line 31
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 32
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gm;->b:Lahd;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lahd;->a(I)V

    .line 33
    return-void
.end method
