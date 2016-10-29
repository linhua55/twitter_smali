.class final Lcom/twitter/android/moments/ui/maker/eb;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/object/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/object/d",
        "<",
        "Lald;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/view/LayoutInflater;

.field final synthetic c:Landroid/content/res/Resources;

.field final synthetic d:Lcom/twitter/android/moments/ui/fullscreen/cv;

.field final synthetic e:Lcin;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/LayoutInflater;Landroid/content/res/Resources;Lcom/twitter/android/moments/ui/fullscreen/cv;Lcin;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/eb;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/eb;->b:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/eb;->c:Landroid/content/res/Resources;

    iput-object p4, p0, Lcom/twitter/android/moments/ui/maker/eb;->d:Lcom/twitter/android/moments/ui/fullscreen/cv;

    iput-object p5, p0, Lcom/twitter/android/moments/ui/maker/eb;->e:Lcin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lald;
    .locals 5

    .prologue
    .line 77
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/eb;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/eb;->b:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/maker/eb;->c:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/maker/eb;->d:Lcom/twitter/android/moments/ui/fullscreen/cv;

    iget-object v4, p0, Lcom/twitter/android/moments/ui/maker/eb;->e:Lcin;

    .line 78
    invoke-static {v0, v1, v2, v3, v4}, Lald;->a(Landroid/app/Activity;Landroid/view/LayoutInflater;Landroid/content/res/Resources;Lcom/twitter/android/moments/ui/fullscreen/cv;Lcin;)Lald;

    move-result-object v0

    .line 77
    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/maker/eb;->a()Lald;

    move-result-object v0

    return-object v0
.end method
