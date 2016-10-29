.class final Lcom/twitter/android/moments/ui/maker/ec;
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
        "Lajr;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/res/Resources;

.field final synthetic b:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Landroid/view/LayoutInflater;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/ec;->a:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/ec;->b:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lajr;
    .locals 3

    .prologue
    .line 87
    new-instance v0, Lajr;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/ec;->a:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/maker/ec;->b:Landroid/view/LayoutInflater;

    .line 88
    invoke-static {v2}, Lajp;->a(Landroid/view/LayoutInflater;)Lajp;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lajr;-><init>(Landroid/content/res/Resources;Lajp;)V

    .line 87
    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/maker/ec;->a()Lajr;

    move-result-object v0

    return-object v0
.end method
