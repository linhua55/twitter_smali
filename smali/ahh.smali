.class public Lahh;
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
.field private final a:Lcom/twitter/android/moments/ui/fullscreen/cm;

.field private final b:Lahd;


# direct methods
.method public constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/cm;Lahd;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lahh;->a:Lcom/twitter/android/moments/ui/fullscreen/cm;

    .line 17
    iput-object p2, p0, Lahh;->b:Lahd;

    .line 18
    iget-object v0, p0, Lahh;->a:Lcom/twitter/android/moments/ui/fullscreen/cm;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/cm;->c()Lcom/twitter/util/x;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/twitter/util/x;->a(Lcom/twitter/util/y;)Z

    .line 19
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lahh;->a:Lcom/twitter/android/moments/ui/fullscreen/cm;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/cm;->c()Lcom/twitter/util/x;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/twitter/util/x;->b(Lcom/twitter/util/y;)Z

    .line 32
    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 23
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lahh;->b:Lahd;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lahd;->a(I)V

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lahh;->b:Lahd;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lahd;->a(I)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 9
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lahh;->a(Ljava/lang/Boolean;)V

    return-void
.end method
