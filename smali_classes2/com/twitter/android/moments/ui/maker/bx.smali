.class public Lcom/twitter/android/moments/ui/maker/bx;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/twitter/android/moments/ui/maker/viewdelegate/u;

.field private final b:Lcom/twitter/android/moments/ui/maker/navigation/ao;


# direct methods
.method public constructor <init>(Lcom/twitter/android/moments/ui/maker/viewdelegate/u;Lcom/twitter/android/moments/ui/maker/navigation/ao;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/bx;->b:Lcom/twitter/android/moments/ui/maker/navigation/ao;

    .line 29
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/bx;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/u;

    .line 30
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bx;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/u;

    invoke-virtual {v0, p0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/u;->a(Landroid/view/View$OnClickListener;)V

    .line 31
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/maker/bx;->a()V

    .line 32
    return-void
.end method

.method public static a(Landroid/view/View;Lcom/twitter/android/moments/ui/maker/navigation/ao;)Lcom/twitter/android/moments/ui/maker/bx;
    .locals 2

    .prologue
    .line 19
    .line 20
    invoke-static {p0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/u;->a(Landroid/view/View;)Lcom/twitter/android/moments/ui/maker/viewdelegate/u;

    move-result-object v0

    .line 21
    new-instance v1, Lcom/twitter/android/moments/ui/maker/bx;

    invoke-direct {v1, v0, p1}, Lcom/twitter/android/moments/ui/maker/bx;-><init>(Lcom/twitter/android/moments/ui/maker/viewdelegate/u;Lcom/twitter/android/moments/ui/maker/navigation/ao;)V

    return-object v1
.end method

.method private a()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bx;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/u;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/u;->a()V

    .line 42
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bx;->b:Lcom/twitter/android/moments/ui/maker/navigation/ao;

    invoke-interface {v0}, Lcom/twitter/android/moments/ui/maker/navigation/ao;->a()V

    .line 37
    return-void
.end method
