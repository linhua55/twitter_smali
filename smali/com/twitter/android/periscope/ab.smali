.class public Lcom/twitter/android/periscope/ab;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/fullscreen/fo;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/android/moments/ui/fullscreen/a;

.field private final c:Lcom/twitter/model/core/Tweet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/android/moments/ui/fullscreen/a;Lcom/twitter/model/core/Tweet;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/twitter/android/periscope/ab;->a:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/twitter/android/periscope/ab;->b:Lcom/twitter/android/moments/ui/fullscreen/a;

    .line 22
    iput-object p3, p0, Lcom/twitter/android/periscope/ab;->c:Lcom/twitter/model/core/Tweet;

    .line 23
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/core/TwitterUser;)V
    .locals 3

    .prologue
    .line 27
    iget-object v0, p0, Lcom/twitter/android/periscope/ab;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/periscope/ab;->b:Lcom/twitter/android/moments/ui/fullscreen/a;

    iget-object v2, p0, Lcom/twitter/android/periscope/ab;->c:Lcom/twitter/model/core/Tweet;

    invoke-static {v0, p1, v1, v2}, Lcom/twitter/android/moments/ui/fullscreen/t;->a(Landroid/content/Context;Lcom/twitter/model/core/TwitterUser;Lcom/twitter/android/moments/ui/fullscreen/a;Lcom/twitter/model/core/Tweet;)Landroid/app/Dialog;

    .line 28
    return-void
.end method
