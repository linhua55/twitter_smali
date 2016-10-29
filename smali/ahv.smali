.class public Lahv;
.super Lcom/twitter/android/moments/ui/fullscreen/dt;
.source "Twttr"


# instance fields
.field private final a:Lahd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/model/moments/ad;Lahd;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/moments/ui/fullscreen/dt;-><init>(Landroid/content/Context;Lcom/twitter/model/moments/ad;)V

    .line 18
    iput-object p3, p0, Lahv;->a:Lahd;

    .line 19
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 23
    invoke-super {p0}, Lcom/twitter/android/moments/ui/fullscreen/dt;->a()V

    .line 24
    iget-object v0, p0, Lahv;->a:Lahd;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lahd;->a(I)V

    .line 25
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 29
    invoke-super {p0}, Lcom/twitter/android/moments/ui/fullscreen/dt;->b()V

    .line 30
    iget-object v0, p0, Lahv;->a:Lahd;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lahd;->a(I)V

    .line 31
    return-void
.end method
