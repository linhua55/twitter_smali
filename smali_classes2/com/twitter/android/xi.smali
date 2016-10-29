.class Lcom/twitter/android/xi;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/xl;

.field final synthetic b:J

.field final synthetic c:Lcss;

.field final synthetic d:Lcom/twitter/android/xn;

.field final synthetic e:Lcom/twitter/android/xe;


# direct methods
.method constructor <init>(Lcom/twitter/android/xe;Lcom/twitter/android/xl;JLcss;Lcom/twitter/android/xn;)V
    .locals 1

    .prologue
    .line 223
    iput-object p1, p0, Lcom/twitter/android/xi;->e:Lcom/twitter/android/xe;

    iput-object p2, p0, Lcom/twitter/android/xi;->a:Lcom/twitter/android/xl;

    iput-wide p3, p0, Lcom/twitter/android/xi;->b:J

    iput-object p5, p0, Lcom/twitter/android/xi;->c:Lcss;

    iput-object p6, p0, Lcom/twitter/android/xi;->d:Lcom/twitter/android/xn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 226
    iget-object v1, p0, Lcom/twitter/android/xi;->a:Lcom/twitter/android/xl;

    iget-wide v2, p0, Lcom/twitter/android/xi;->b:J

    iget-object v4, p0, Lcom/twitter/android/xi;->c:Lcss;

    iget-object v0, p0, Lcom/twitter/android/xi;->e:Lcom/twitter/android/xe;

    invoke-static {v0}, Lcom/twitter/android/xe;->a(Lcom/twitter/android/xe;)I

    move-result v5

    iget-object v6, p0, Lcom/twitter/android/xi;->d:Lcom/twitter/android/xn;

    invoke-interface/range {v1 .. v6}, Lcom/twitter/android/xl;->a(JLcss;ILcom/twitter/android/xn;)V

    .line 227
    return-void
.end method
