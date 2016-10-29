.class Latm;
.super Lcom/twitter/library/util/y;
.source "Twttr"


# instance fields
.field final synthetic a:Latl;


# direct methods
.method constructor <init>(Latl;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Latm;->a:Latl;

    invoke-direct {p0}, Lcom/twitter/library/util/y;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Latm;->a:Latl;

    invoke-static {v0, p1, p2}, Latl;->a(Latl;Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 115
    return-void
.end method
