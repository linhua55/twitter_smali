.class public Lawq;
.super Lcom/twitter/util/x;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/x",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/twitter/util/x;-><init>()V

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lawr;

    invoke-direct {v1, p0, p1, p2}, Lawr;-><init>(Lawq;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 24
    return-void
.end method

.method static synthetic a(Lawq;)Z
    .locals 1

    .prologue
    .line 8
    iget-boolean v0, p0, Lawq;->a:Z

    return v0
.end method

.method static synthetic a(Lawq;Z)Z
    .locals 0

    .prologue
    .line 8
    iput-boolean p1, p0, Lawq;->a:Z

    return p1
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lawq;->a:Z

    return v0
.end method
