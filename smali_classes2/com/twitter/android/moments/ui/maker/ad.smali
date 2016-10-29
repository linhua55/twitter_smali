.class Lcom/twitter/android/moments/ui/maker/ad;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/maker/ab;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/ab;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/ad;->a:Lcom/twitter/android/moments/ui/maker/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ad;->a:Lcom/twitter/android/moments/ui/maker/ab;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/ab;->b(Lcom/twitter/android/moments/ui/maker/ab;)V

    .line 139
    return-void
.end method
