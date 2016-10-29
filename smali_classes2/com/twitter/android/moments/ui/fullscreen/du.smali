.class public Lcom/twitter/android/moments/ui/fullscreen/du;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/moments/ui/fullscreen/fo;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/android/moments/ui/fullscreen/a;

.field private final c:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/android/moments/ui/fullscreen/a;J)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/du;->a:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/du;->b:Lcom/twitter/android/moments/ui/fullscreen/a;

    .line 23
    iput-wide p3, p0, Lcom/twitter/android/moments/ui/fullscreen/du;->c:J

    .line 24
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/core/TwitterUser;)V
    .locals 4

    .prologue
    .line 28
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/du;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/du;->b:Lcom/twitter/android/moments/ui/fullscreen/a;

    iget-wide v2, p0, Lcom/twitter/android/moments/ui/fullscreen/du;->c:J

    invoke-static {v0, p1, v1, v2, v3}, Lcom/twitter/android/moments/ui/fullscreen/t;->a(Landroid/content/Context;Lcom/twitter/model/core/TwitterUser;Lcom/twitter/android/moments/ui/fullscreen/a;J)Landroid/app/Dialog;

    .line 29
    return-void
.end method
