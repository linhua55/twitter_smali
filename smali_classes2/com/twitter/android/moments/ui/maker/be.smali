.class Lcom/twitter/android/moments/ui/maker/be;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/maker/bc;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/bc;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/be;->a:Lcom/twitter/android/moments/ui/maker/bc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/be;->a:Lcom/twitter/android/moments/ui/maker/bc;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/bc;->b(Lcom/twitter/android/moments/ui/maker/bc;)V

    .line 150
    return-void
.end method
