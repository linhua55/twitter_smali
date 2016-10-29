.class Lcom/twitter/android/xg;
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
    .line 171
    iput-object p1, p0, Lcom/twitter/android/xg;->e:Lcom/twitter/android/xe;

    iput-object p2, p0, Lcom/twitter/android/xg;->a:Lcom/twitter/android/xl;

    iput-wide p3, p0, Lcom/twitter/android/xg;->b:J

    iput-object p5, p0, Lcom/twitter/android/xg;->c:Lcss;

    iput-object p6, p0, Lcom/twitter/android/xg;->d:Lcom/twitter/android/xn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 174
    iget-object v1, p0, Lcom/twitter/android/xg;->a:Lcom/twitter/android/xl;

    iget-wide v2, p0, Lcom/twitter/android/xg;->b:J

    iget-object v4, p0, Lcom/twitter/android/xg;->c:Lcss;

    iget-object v0, p0, Lcom/twitter/android/xg;->e:Lcom/twitter/android/xe;

    invoke-static {v0}, Lcom/twitter/android/xe;->a(Lcom/twitter/android/xe;)I

    move-result v5

    iget-object v6, p0, Lcom/twitter/android/xg;->d:Lcom/twitter/android/xn;

    invoke-interface/range {v1 .. v6}, Lcom/twitter/android/xl;->a(JLcss;ILcom/twitter/android/xn;)V

    .line 175
    return-void
.end method
