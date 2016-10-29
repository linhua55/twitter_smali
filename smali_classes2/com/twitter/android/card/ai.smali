.class public Lcom/twitter/android/card/ai;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Labb;

.field private final b:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Labb;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p1, p0, Lcom/twitter/android/card/ai;->a:Labb;

    .line 214
    iput-object p2, p0, Lcom/twitter/android/card/ai;->b:Landroid/view/View$OnClickListener;

    .line 215
    return-void
.end method


# virtual methods
.method public a(Lcdq;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/twitter/android/card/ai;->a:Labb;

    iget-object v1, p0, Lcom/twitter/android/card/ai;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Labb;->a(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/twitter/android/card/ai;->a:Labb;

    invoke-virtual {v0, p1, p2}, Labb;->a(Lcdq;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 224
    iget-object v0, p0, Lcom/twitter/android/card/ai;->a:Labb;

    invoke-virtual {v0}, Labb;->c()Lcom/twitter/library/widget/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/library/widget/a;->h()Lcom/twitter/library/av/playback/ba;

    .line 225
    return-void
.end method
