.class public Lcom/twitter/android/moments/ui/fullscreen/gi;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/fullscreen/fr;


# instance fields
.field private final a:Lcom/twitter/model/core/ay;

.field private final b:Lcom/twitter/android/moments/ui/fullscreen/gj;

.field private final c:Lcin;


# direct methods
.method public constructor <init>(Lcom/twitter/android/moments/ui/fullscreen/gj;Lcom/twitter/model/core/ay;Lcin;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/gi;->a:Lcom/twitter/model/core/ay;

    .line 16
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/gi;->b:Lcom/twitter/android/moments/ui/fullscreen/gj;

    .line 17
    iput-object p3, p0, Lcom/twitter/android/moments/ui/fullscreen/gi;->c:Lcin;

    .line 18
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 22
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/gi;->c:Lcin;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/gi;->a:Lcom/twitter/model/core/ay;

    invoke-virtual {v0, v1}, Lcin;->a(Lcom/twitter/model/core/ay;)Ljava/lang/String;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/gi;->b:Lcom/twitter/android/moments/ui/fullscreen/gj;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/gi;->a:Lcom/twitter/model/core/ay;

    invoke-virtual {v1, v2, v0}, Lcom/twitter/android/moments/ui/fullscreen/gj;->a(Lcom/twitter/model/core/ay;Ljava/lang/CharSequence;)V

    .line 24
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method
