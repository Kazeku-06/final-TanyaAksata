import MainLayout from "@/components/layout/MainLayout";
import UserProfileLogic from "@/features/userProfile/UserProfileLogic";

interface PageProps {
  params: Promise<{ id: string }>;
}

export async function generateStaticParams() {
  return [{ id: "1" }];
}

export default async function UserProfilePage({ params }: PageProps) {
  const { id } = await params;
  return (
    <MainLayout>
      <UserProfileLogic userId={id} />
    </MainLayout>
  );
}
