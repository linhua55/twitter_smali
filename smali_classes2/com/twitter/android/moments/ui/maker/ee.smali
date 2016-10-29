.class final Lcom/twitter/android/moments/ui/maker/ee;
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
        "Lakh;",
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
    .line 101
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/ee;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/ee;->b:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/ee;->c:Landroid/content/res/Resources;

    iput-object p4, p0, Lcom/twitter/android/moments/ui/maker/ee;->d:Lcom/twitter/android/moments/ui/fullscreen/cv;

    iput-object p5, p0, Lcom/twitter/android/moments/ui/maker/ee;->e:Lcin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lakh;
    .locals 5

    .prologue
    .line 105
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ee;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/ee;->b:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/maker/ee;->c:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/maker/ee;->d:Lcom/twitter/android/moments/ui/fullscreen/cv;

    iget-object v4, p0, Lcom/twitter/android/moments/ui/maker/ee;->e:Lcin;

    .line 106
    invoke-static {v0, v1, v2, v3, v4}, Lakh;->a(Landroid/app/Activity;Landroid/view/LayoutInflater;Landroid/content/res/Resources;Lcom/twitter/android/moments/ui/fullscreen/cv;Lcin;)Lakh;

    move-result-object v0

    .line 105
    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/maker/ee;->a()Lakh;

    move-result-object v0

    return-object v0
.end method
