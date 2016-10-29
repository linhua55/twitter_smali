.class Lcom/twitter/android/xf;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/xl;

.field final synthetic b:J

.field final synthetic c:Lcss;

.field final synthetic d:Lcom/twitter/android/xn;

.field final synthetic e:Lcom/twitter/android/xk;

.field final synthetic f:Landroid/content/res/Resources;

.field final synthetic g:Lcom/twitter/android/xe;


# direct methods
.method constructor <init>(Lcom/twitter/android/xe;Lcom/twitter/android/xl;JLcss;Lcom/twitter/android/xn;Lcom/twitter/android/xk;Landroid/content/res/Resources;)V
    .locals 1

    .prologue
    .line 147
    iput-object p1, p0, Lcom/twitter/android/xf;->g:Lcom/twitter/android/xe;

    iput-object p2, p0, Lcom/twitter/android/xf;->a:Lcom/twitter/android/xl;

    iput-wide p3, p0, Lcom/twitter/android/xf;->b:J

    iput-object p5, p0, Lcom/twitter/android/xf;->c:Lcss;

    iput-object p6, p0, Lcom/twitter/android/xf;->d:Lcom/twitter/android/xn;

    iput-object p7, p0, Lcom/twitter/android/xf;->e:Lcom/twitter/android/xk;

    iput-object p8, p0, Lcom/twitter/android/xf;->f:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 150
    iget-object v1, p0, Lcom/twitter/android/xf;->a:Lcom/twitter/android/xl;

    iget-wide v2, p0, Lcom/twitter/android/xf;->b:J

    iget-object v4, p0, Lcom/twitter/android/xf;->c:Lcss;

    iget-object v0, p0, Lcom/twitter/android/xf;->g:Lcom/twitter/android/xe;

    .line 151
    invoke-static {v0}, Lcom/twitter/android/xe;->a(Lcom/twitter/android/xe;)I

    move-result v5

    iget-object v6, p0, Lcom/twitter/android/xf;->d:Lcom/twitter/android/xn;

    .line 150
    invoke-interface/range {v1 .. v6}, Lcom/twitter/android/xl;->b(JLcss;ILcom/twitter/android/xn;)I

    move-result v0

    .line 153
    iget-object v1, p0, Lcom/twitter/android/xf;->e:Lcom/twitter/android/xk;

    iget-object v2, p0, Lcom/twitter/android/xf;->f:Landroid/content/res/Resources;

    invoke-virtual {v1, v0, v2}, Lcom/twitter/android/xk;->a(ILandroid/content/res/Resources;)V

    .line 154
    iget-object v1, p0, Lcom/twitter/android/xf;->d:Lcom/twitter/android/xn;

    iput v0, v1, Lcom/twitter/android/xn;->b:I

    .line 155
    return-void
.end method
