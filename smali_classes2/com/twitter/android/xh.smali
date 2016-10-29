.class Lcom/twitter/android/xh;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/xl;

.field final synthetic b:Lcom/twitter/android/xe;


# direct methods
.method constructor <init>(Lcom/twitter/android/xe;Lcom/twitter/android/xl;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/twitter/android/xh;->b:Lcom/twitter/android/xe;

    iput-object p2, p0, Lcom/twitter/android/xh;->a:Lcom/twitter/android/xl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/twitter/android/xh;->a:Lcom/twitter/android/xl;

    invoke-interface {v0}, Lcom/twitter/android/xl;->Y()V

    .line 196
    return-void
.end method
