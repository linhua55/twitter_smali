.class public Lcom/twitter/android/moments/ui/fullscreen/dy;
.super Lcin;
.source "Twttr"


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcbh;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcin;-><init>(Landroid/content/res/Resources;)V

    .line 20
    invoke-virtual {p2}, Lcbh;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/moments/ui/fullscreen/dy;->a:Z

    .line 21
    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/twitter/android/moments/ui/fullscreen/dy;->a:Z

    return v0
.end method
