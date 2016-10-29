.class Lcom/twitter/android/moments/ui/maker/ae;
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
    .line 141
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/ae;->a:Lcom/twitter/android/moments/ui/maker/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/ae;->a:Lcom/twitter/android/moments/ui/maker/ab;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/ab;->c(Lcom/twitter/android/moments/ui/maker/ab;)Lcom/twitter/android/moments/ui/maker/navigation/ao;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/android/moments/ui/maker/navigation/ao;->a()V

    .line 145
    return-void
.end method
