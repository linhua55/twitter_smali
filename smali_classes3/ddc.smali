.class Lddc;
.super Ldiv;
.source "Twttr"


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Ldda;


# direct methods
.method constructor <init>(Ldda;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lddc;->b:Ldda;

    iput-object p2, p0, Lddc;->a:Landroid/view/View;

    invoke-direct {p0}, Ldiv;-><init>()V

    return-void
.end method


# virtual methods
.method protected c()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lddc;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    return-void
.end method
