.class public Lcom/twitter/android/moments/ui/fullscreen/ib;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/fullscreen/fr;


# instance fields
.field private final a:Lall;

.field private final b:Lcom/twitter/android/card/d;

.field private final c:Lcom/twitter/model/moments/z;


# direct methods
.method public constructor <init>(Lall;Lcom/twitter/android/card/d;Lcom/twitter/model/moments/z;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/ib;->a:Lall;

    .line 19
    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/ib;->b:Lcom/twitter/android/card/d;

    .line 20
    iput-object p3, p0, Lcom/twitter/android/moments/ui/fullscreen/ib;->c:Lcom/twitter/model/moments/z;

    .line 21
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/ib;)Lcom/twitter/android/card/d;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ib;->b:Lcom/twitter/android/card/d;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 25
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ib;->c:Lcom/twitter/model/moments/z;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/ib;->a:Lall;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/ib;->c:Lcom/twitter/model/moments/z;

    new-instance v2, Lcom/twitter/android/moments/ui/fullscreen/ic;

    invoke-direct {v2, p0}, Lcom/twitter/android/moments/ui/fullscreen/ic;-><init>(Lcom/twitter/android/moments/ui/fullscreen/ib;)V

    invoke-virtual {v0, v1, v2}, Lall;->a(Lcom/twitter/model/moments/z;Lcom/twitter/android/moments/ui/fullscreen/id;)V

    .line 33
    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method
