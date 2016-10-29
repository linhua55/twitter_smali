.class public Lcom/twitter/android/moments/ui/maker/viewdelegate/an;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor <init>(Landroid/view/ViewTreeObserver;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/an;->a:Landroid/view/ViewTreeObserver;

    .line 16
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/an;->a:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 20
    return-void
.end method

.method public b(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/an;->a:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 24
    return-void
.end method
