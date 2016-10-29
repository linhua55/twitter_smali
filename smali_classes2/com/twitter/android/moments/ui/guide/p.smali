.class Lcom/twitter/android/moments/ui/guide/p;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/guide/m;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/guide/m;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/twitter/android/moments/ui/guide/p;->a:Lcom/twitter/android/moments/ui/guide/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/p;->a:Lcom/twitter/android/moments/ui/guide/m;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/guide/m;->e()Z

    .line 139
    return-void
.end method
