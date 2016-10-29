.class Lcom/twitter/android/moments/ui/maker/r;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/maker/p;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/p;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/r;->a:Lcom/twitter/android/moments/ui/maker/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/r;->a:Lcom/twitter/android/moments/ui/maker/p;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/p;->a(Lcom/twitter/android/moments/ui/maker/p;)V

    .line 72
    return-void
.end method
